import defaultTheme from 'tailwindcss/defaultTheme';
import forms from '@tailwindcss/forms';

/** @type {import('tailwindcss').Config} */
export default {
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
    ],

    theme: {
        extend: {
            
            fontFamily: {
                sans: ['Figtree', ...defaultTheme.fontFamily.sans],
            },
            colors: {
                'curious-blue': {
                    DEFAULT : '#1198d6',
                    '50': '#f0f9ff',
                    '100': '#e1f2fd',
                    '200': '#bbe6fc',
                    '300': '#7fd1fa',
                    '400': '#3cbbf4',
                    '600': '#0682c3',
                    '700': '#06679e',
                    '800': '#095783',
                    '900': '#0e4a6c',
                    '950': '#092f48',
                },
                'jaffa': {
                    DEFAULT : '#f07f3c',
                    '50': '#fef6ee',
                    '100': '#fdead7',
                    '200': '#fad1ae',
                    '300': '#f6b07b',
                    '500': '#ed6522',
                    '600': '#de4d18',
                    '700': '#b83816',
                    '800': '#932e19',
                    '900': '#762918',
                    '950': '#40120a',
                },
                            
                
            },
        },
    },

    plugins: [forms],
    safelist: [
        {
            pattern:/(bg|text|border|hover)-(curious-blue|jaffa)/,
        },
        {
            pattern: /(bg|text|border|hover)-(curious-blue)-(50|100|200|300|400|500|600|700|800|950)/,
        },
        {
            pattern: /(bg|text|border|hover)-(jaffa)-(50|100|200|300|400|500|700|800|900|950)/,
        },
      ],
};