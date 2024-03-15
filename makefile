PACKAGES := $(wildcard packages/*)
CORE := $(wildcard packages/core/*)
FEATURES := $(wildcard packages/features/*)

print:
	@for feature in $(CORE); do \
		echo $${feature} ; \
	done
	@for feature in $(FEATURES); do \
		echo $${feature} ; \
	done
	@for package in $(PACKAGES); do \
		echo $${package} ; \
	done

get:
	@flutter pub get
	@for feature in $(FEATURES); do \
		cd $${feature} ; \
		echo "Updating dependencies on $${feature}" ; \
		flutter pub get ; \
		cd ../../../ ; \
	done
	@for package in $(PACKAGES); do \
		cd $${package} ; \
		echo "Updating dependencies on $${package}" ; \
		flutter pub get ; \
		cd ../../ ; \
	done
	
pods-clean:
	@rm -Rf ios/Pods ; \
	rm -Rf ios/.symlinks ; \
	rm -Rf ios/Flutter/Flutter.framework ; \
	rm -Rf ios/Flutter/Flutter.podspec ; \
	rm ios/Podfile ; \
	rm ios/Podfile.lock ; \

upgrade:
	@flutter pub upgrade
	@for feature in $(FEATURES); do \
		cd $${feature} ; \
		echo "Updating dependencies on $${feature}" ; \
		flutter pub upgrade ; \
		cd ../../../ ; \
	done
	@for package in $(PACKAGES); do \
		cd $${package} ; \
		echo "Updating dependencies on $${package}" ; \
		flutter pub upgrade ; \
		cd ../../ ; \
	done

lint:
	@flutter analyze

format:
	@find packages -name "*.dart" ! -name "*.g.dart" ! -name "*.gr.dart" ! -name "*.freezed.dart" ! -path '*/generated/*'  | tr '\n' ' ' | xargs dart format -l "80"

testing:
	@flutter test
	@for feature in $(FEATURES); do \
		cd $${feature} ; \
		echo "Running test on $${feature}" ; \
		flutter test ; \
		cd ../../../ ; \
	done
	@for package in $(PACKAGES); do \
		cd $${package} ; \
		echo "Running test on $${package}" ; \
		flutter test ; \
		cd ../../ ; \
	done

test-coverage:
	@flutter test --coverage
	@for feature in $(FEATURES); do \
		cd $${feature} ; \
		echo "Running test on $${feature}" ; \
		flutter test --coverage ; \
		cd ../../../ ; \
	done
	@for package in $(PACKAGES); do \
		cd $${package} ; \
		echo "Running test on $${package}" ; \
		flutter test --coverage ; \
		cd ../../ ; \
	done

clean:
	@flutter clean
	@find . -maxdepth 20 -type f \( -name "*.gm.dart" -o  -name "*.g.dart" \) -delete
	@for feature in $(FEATURES); do \
		cd $${feature} ; \
		echo "Running clean on $${feature}" ; \
		flutter clean ; \
		cd ../../../ ; \
	done
	@for package in $(CORE); do \
		cd $${package} ; \
		echo "Running clean on $${package}" ; \
		flutter clean ; \
		cd ../../../ ; \
	done

build-runner:
	@for package in $(FEATURES); do \
		cd $${package} ; \
		echo "Running build-runner on $${package}" ; \
		dart run build_runner build --delete-conflicting-outputs ; \
		cd ../../../ ; \
	done
	@for package in $(CORE); do \
		cd $${package} ; \
		echo "Running build-runner on $${package}" ; \
		dart run build_runner build --delete-conflicting-outputs ; \
		cd ../../../ ; \
	done

build:
	@make get
	@make build-runner