# frozen_string_literal: true

# The MIT License (MIT)
#
# Copyright <YEAR> <COPYRIGHT HOLDER>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Maps
    module Routing
      module V2
        # List of toll passes around the world that we support.
        module TollPass
          # Not used. If this value is used, then the request fails.
          TOLL_PASS_UNSPECIFIED = 0

          # Sydney toll pass. See additional details at https://www.myetoll.com.au.
          AU_ETOLL_TAG = 82

          # Sydney toll pass. See additional details at https://www.tollpay.com.au.
          AU_EWAY_TAG = 83

          # Australia-wide toll pass.
          # See additional details at https://www.linkt.com.au/.
          AU_LINKT = 2

          # Argentina toll pass. See additional details at https://telepase.com.ar
          AR_TELEPASE = 3

          # Brazil toll pass. See additional details at https://www.autoexpreso.com
          BR_AUTO_EXPRESO = 81

          # Brazil toll pass. See additional details at https://conectcar.com.
          BR_CONECTCAR = 7

          # Brazil toll pass. See additional details at https://movemais.com.
          BR_MOVE_MAIS = 8

          # Brazil toll pass. See additional details at https://pasorapido.gob.do/
          BR_PASSA_RAPIDO = 88

          # Brazil toll pass. See additional details at https://www.semparar.com.br.
          BR_SEM_PARAR = 9

          # Brazil toll pass. See additional details at https://taggy.com.br.
          BR_TAGGY = 10

          # Brazil toll pass. See additional details at
          # https://veloe.com.br/site/onde-usar.
          BR_VELOE = 11

          # Canada to United States border crossing.
          CA_US_AKWASASNE_SEAWAY_CORPORATE_CARD = 84

          # Canada to United States border crossing.
          CA_US_AKWASASNE_SEAWAY_TRANSIT_CARD = 85

          # Ontario, Canada to Michigan, United States border crossing.
          CA_US_BLUE_WATER_EDGE_PASS = 18

          # Ontario, Canada to Michigan, United States border crossing.
          CA_US_CONNEXION = 19

          # Canada to United States border crossing.
          CA_US_NEXUS_CARD = 20

          # Indonesia.
          # E-card provided by multiple banks used to pay for tolls. All e-cards
          # via banks are charged the same so only one enum value is needed. E.g.
          # - Bank Mandiri https://www.bankmandiri.co.id/e-money
          # - BCA https://www.bca.co.id/flazz
          # - BNI https://www.bni.co.id/id-id/ebanking/tapcash
          ID_E_TOLL = 16

          # India.
          IN_FASTAG = 78

          # India, HP state plate exemption.
          IN_LOCAL_HP_PLATE_EXEMPT = 79

          # Mexico toll pass.
          # https://iave.capufe.gob.mx/#/
          MX_IAVE = 90

          # Mexico
          # https://www.pase.com.mx
          MX_PASE = 91

          # Mexico
          #  https://operadoravial.com/quick-pass/
          MX_QUICKPASS = 93

          # http://appsh.chihuahua.gob.mx/transparencia/?doc=/ingresos/TelepeajeFormato4.pdf
          MX_SISTEMA_TELEPEAJE_CHIHUAHUA = 89

          # Mexico
          MX_TAG_IAVE = 12

          # Mexico toll pass company. One of many operating in Mexico City. See
          # additional details at https://www.televia.com.mx.
          MX_TAG_TELEVIA = 13

          # Mexico toll pass company. One of many operating in Mexico City.
          # https://www.televia.com.mx
          MX_TELEVIA = 92

          # Mexico toll pass. See additional details at
          # https://www.viapass.com.mx/viapass/web_home.aspx.
          MX_VIAPASS = 14

          # AL, USA.
          US_AL_FREEDOM_PASS = 21

          # AK, USA.
          US_AK_ANTON_ANDERSON_TUNNEL_BOOK_OF_10_TICKETS = 22

          # CA, USA.
          US_CA_FASTRAK = 4

          # Indicates driver has any FasTrak pass in addition to the DMV issued Clean
          # Air Vehicle (CAV) sticker.
          # https://www.bayareafastrak.org/en/guide/doINeedFlex.shtml
          US_CA_FASTRAK_CAV_STICKER = 86

          # CO, USA.
          US_CO_EXPRESSTOLL = 23

          # CO, USA.
          US_CO_GO_PASS = 24

          # DE, USA.
          US_DE_EZPASSDE = 25

          # FL, USA.
          US_FL_BOB_SIKES_TOLL_BRIDGE_PASS = 65

          # FL, USA.
          US_FL_DUNES_COMMUNITY_DEVELOPMENT_DISTRICT_EXPRESSCARD = 66

          # FL, USA.
          US_FL_EPASS = 67

          # FL, USA.
          US_FL_GIBA_TOLL_PASS = 68

          # FL, USA.
          US_FL_LEEWAY = 69

          # FL, USA.
          US_FL_SUNPASS = 70

          # FL, USA.
          US_FL_SUNPASS_PRO = 71

          # IL, USA.
          US_IL_EZPASSIL = 73

          # IL, USA.
          US_IL_IPASS = 72

          # IN, USA.
          US_IN_EZPASSIN = 26

          # KS, USA.
          US_KS_BESTPASS_HORIZON = 27

          # KS, USA.
          US_KS_KTAG = 28

          # KS, USA.
          US_KS_NATIONALPASS = 29

          # KS, USA.
          US_KS_PREPASS_ELITEPASS = 30

          # KY, USA.
          US_KY_RIVERLINK = 31

          # LA, USA.
          US_LA_GEAUXPASS = 32

          # LA, USA.
          US_LA_TOLL_TAG = 33

          # MA, USA.
          US_MA_EZPASSMA = 6

          # MD, USA.
          US_MD_EZPASSMD = 34

          # ME, USA.
          US_ME_EZPASSME = 35

          # MI, USA.
          US_MI_AMBASSADOR_BRIDGE_PREMIER_COMMUTER_CARD = 36

          # MI, USA.
          US_MI_BCPASS = 94

          # MI, USA.
          US_MI_GROSSE_ILE_TOLL_BRIDGE_PASS_TAG = 37

          # MI, USA.
          # Deprecated as this pass type no longer exists.
          US_MI_IQ_PROX_CARD = 38

          # MI, USA.
          US_MI_IQ_TAG = 95

          # MI, USA.
          US_MI_MACKINAC_BRIDGE_MAC_PASS = 39

          # MI, USA.
          US_MI_NEXPRESS_TOLL = 40

          # MN, USA.
          US_MN_EZPASSMN = 41

          # NC, USA.
          US_NC_EZPASSNC = 42

          # NC, USA.
          US_NC_PEACH_PASS = 87

          # NC, USA.
          US_NC_QUICK_PASS = 43

          # NH, USA.
          US_NH_EZPASSNH = 80

          # NJ, USA.
          US_NJ_DOWNBEACH_EXPRESS_PASS = 75

          # NJ, USA.
          US_NJ_EZPASSNJ = 74

          # NY, USA.
          US_NY_EXPRESSPASS = 76

          # NY, USA.
          US_NY_EZPASSNY = 77

          # OH, USA.
          US_OH_EZPASSOH = 44

          # PA, USA.
          US_PA_EZPASSPA = 45

          # RI, USA.
          US_RI_EZPASSRI = 46

          # SC, USA.
          US_SC_PALPASS = 47

          # TX, USA.
          US_TX_AVI_TAG = 97

          # TX, USA.
          US_TX_BANCPASS = 48

          # TX, USA.
          US_TX_DEL_RIO_PASS = 49

          # TX, USA.
          US_TX_EFAST_PASS = 50

          # TX, USA.
          US_TX_EAGLE_PASS_EXPRESS_CARD = 51

          # TX, USA.
          US_TX_EPTOLL = 52

          # TX, USA.
          US_TX_EZ_CROSS = 53

          # TX, USA.
          US_TX_EZTAG = 54

          # TX, USA.
          US_TX_FUEGO_TAG = 96

          # TX, USA.
          US_TX_LAREDO_TRADE_TAG = 55

          # TX, USA.
          US_TX_PLUSPASS = 56

          # TX, USA.
          US_TX_TOLLTAG = 57

          # TX, USA.
          US_TX_TXTAG = 58

          # TX, USA.
          US_TX_XPRESS_CARD = 59

          # UT, USA.
          US_UT_ADAMS_AVE_PARKWAY_EXPRESSCARD = 60

          # VA, USA.
          US_VA_EZPASSVA = 61

          # WA, USA.
          US_WA_BREEZEBY = 17

          # WA, USA.
          US_WA_GOOD_TO_GO = 1

          # WV, USA.
          US_WV_EZPASSWV = 62

          # WV, USA.
          US_WV_MEMORIAL_BRIDGE_TICKETS = 63

          # WV, USA.
          US_WV_NEWELL_TOLL_BRIDGE_TICKET = 64
        end
      end
    end
  end
end
