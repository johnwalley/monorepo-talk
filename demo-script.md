## Setup

1. Always use yarn.
1. Unlink packages before hand.
1. Stop all servers, e.g. styleguide
1. Clean node_modules directories
1. Install dependencies for each package

## Yarn workspaces

```json
{
  "private": true,
  "workspaces": ["workspace-a", "workspace-b"]
}
```

## Lerna

```bash
npx lerna init
```

Lerna also gives us a way to import existing repositories while retaining commit history

```bash
npx lerna import <path to repository>
```

Set up Lerna to use yarn workspaces. Add the following to lerna.json

```json
"npmClient": "yarn",
"useWorkspaces": true,
```

Add a scripts section to package.json

```json
"scripts": {
"lint": "lerna run lint",
"test": "jest",
"build": "lerna run prepare --scope=react-rowing-blades && lerna run prepare --scope=react-bumps-chart && lerna run build --scope=cambridge-bumps-website"
}
```

```
<StyledBlade club={d.code} size={bladeSize} reverse rotate />
```

Use source code

```json
"module": "src/index.js",
```

```js
{
  rotate && (
    <animateTransform
      attributeName="transform"
      attributeType="XML"
      type="rotate"
      from="0 250 115"
      to="360 250 115"
      dur={`1s`}
      repeatCount="indefinite"
    />
  )
}
```

Webpack

```js
{
    test: /\.jsx?$/,
    include: /react-rowing-blades/,
    loader: "babel-loader",
    options: {
    presets: ["@babel/preset-env", "@babel/preset-react"]
    }
}
```

Rollup

```js
presets: ['@babel/preset-react'];
```
