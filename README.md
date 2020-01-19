# Getting started

Create a container and shell into it for adhoc development by running `make run`.

**Requirments:** `make`, `docker-compose` & `docker`.


# Once you're inside the container

You can create your own generator with `yo generator` or you can use the sample generator located in `/code/generator-devyo/`.

To make a generator available locally in the container `cd` into it's directory then run `npm link`.

To create a new project from a generator:

1. Create a new directory `mkdir new-folder && cd new-folder`
2. Run `yo <generator-name>` eg `yo devyo`

# More Info

See [Optimizing for DX — The Developer Experience](https://medium.com/@drew.khoury/optimizing-for-dx-the-developer-experience-f37fe168642d?source=friends_link&sk=6ea1510ec165364331781c83de24d544) for more info about why this repo exists and how you can use these patterns to make your life easier as a developer.