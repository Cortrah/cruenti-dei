<template>
    <div>
        <h3>Free Companies and Errantry</h3>
        <ul>
            <li v-for="company in companies">
                {{ company.Name }}
            </li>
        </ul>
    </div>
</template>

<script type="text/babel">
    export default {
        name: 'errantry',
        data () {
            return {
                companies: [
                    {
                        "Name": "White Lotus Company",
                        "Captain": "Mistress Exata (L9931) IL age 39",
                        "Location": "Plormel, Biralis Province",
                        "Min. Bid": "60gp/Turn"
                    },
                    {
                        "Name": "Trangs Fleet",
                        "Captain": "Commodor Wild Trang (LA69s) YG age 36",
                        "Location": "Somewhere in Ingazi",
                        "Min. Bid": "50gp/Turn"
                    }
                ]
            }
        }
    }
</script>

<style scoped>
</style>
