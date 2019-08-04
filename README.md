# My homebrew tap

Find my tools (hopefully useful).

# Doing a release

This is currently a manual process.
Describing the release of `githud`. Other tools follow the same logic.

* Download the released .tar.gz source bundle
* Compute its sha256 sum
```
shasum -a 256 MY_FILE
```
* Edit `Formula/githud.rb`
  * Change the version number
  * Update the sha256 entry with the value computed above
  * Comment the `bottle section`
* Uninstall the local `githud`
```
brew uninstall githud
```
* Install `githud` from the new formula, with the `--build-bottle` tag
```
brew install --build-bottle Formula/githud.rb
```
* Create the bottle
```
brew bottle --force-core-tap Formula/githud.rb
```
* Take the output of the above command and put it in `Formula/githud.rb` in place of the old
  `bottle` section
* Make sure to preserve the `root_url` parameter of the `bottle` section
* Move the generated `.bottle.tar.gz` file into the `Bottles` folder
* Commit
* Push
* Tag a release
