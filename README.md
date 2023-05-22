📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [OOP school library] <a name="about-project"></a>

**[OOP school library]** app that you will create will allow you to Add new students or teachers, Add new books, Save records of who borrowed a given book and when. And all of this will be built in a beautiful and well-organized way.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<summary>Ruby</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Add Remove functionality]**
- **[Add Update functionality]**
- **[Add more data base]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

This project has not been deployed yet

<!-- - [Live Demo Link](<replace-with-your-deployment-URL>) -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

> Describe how a new developer could make use of your project.

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

<!--
Example command:

```sh
 gem install rails
```
 -->

### Setup

Clone this repository to your desired folder:

Example commands:

```sh
  cd my-folder
  git clone https://github.com/Kaghenimbale/school_library.git
```

### Install

Install this project with:

Example command:

```sh
  cd my-project
  gem install
```

### Usage

To run the project, execute the following command:

<!--
Example command:

```sh
  rails server
```
--->

### Run tests

To run tests, run the following command:

<!--
Example command:

```sh
  bin/rails test test/models/article_test.rb
```
--->

### Deployment

This project has not been deployed yet.

<!--
Example:

```sh

```
 -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **Kagheni Mbale Christian**

- GitHub: [@githubhandle](https://github.com/Kaghenimbale)
- Twitter: [@twitterhandle](https://twitter.com/MbaleKagheni)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/kagheni-mbale-401b90240/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [ ] **[Add schemas to the project]**
- [ ] **[Add screenshot to provide details about the project]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Give a start ⭐️ If you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Thank you Microverse and my friend who always explain me for preparing this project! clapclapclap

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](https://github.com/Kaghenimbale/school_library/blob/main/LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### [RuboCop](https://docs.rubocop.org/en/stable/)

1. Add this line to the `Gemfile`
   ```
   gem 'rubocop', '>= 1.0', '< 2.0'
   ```
   _not sure how to use Gemfile? Read [this](https://bundler.io/v1.15/guides/bundler_setup.html)._
2. Run `bundle install`.
3. Copy [.rubocop.yml](./.rubocop.yml) to the root directory of your project
4. **Do not make any changes in config files - they represent style guidelines that you share with your team - which is a group of all Microverse students.**
   - If you think that change is necessary - open a [Pull Request in this repository](../README.md#contributing) and let your code reviewer know about it.
5. Run `rubocop`.
6. Fix linter errors.
7. **IMPORTANT NOTE**: feel free to research [auto-correct options for Rubocop](https://rubocop.readthedocs.io/en/latest/auto_correct/) if you get a flood of errors but keep in mind that correcting style errors manually will help you to make a habit of writing a clean code!

## Troubleshooting

- While using Colorize gem, if you are facing errors with Rspec related to
  ```bash
  LoadError:
  cannot load such file -- colorize
  ```
  please remove `--deployment` from line no. [26](https://github.com/shubham14p3/Ruby-capstone-project/blob/ca86784cc88bea7c933e329c0953f07e21bcf6ca/.github/workflows/tests.yml#L16) of test.yml file.
