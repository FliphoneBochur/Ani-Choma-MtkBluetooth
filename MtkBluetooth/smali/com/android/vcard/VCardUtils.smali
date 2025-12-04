.class public Lcom/android/vcard/VCardUtils;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardUtils$TextUtilsPort;,
        Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;,
        Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;,
        Lcom/android/vcard/VCardUtils$DecoderException;
    }
.end annotation


# static fields
.field static final ENGDEBUG:Z

.field public static final FORCE_DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "MTK_vCard"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final sEscapeIndicatorsV30:[I

.field private static final sEscapeIndicatorsV40:[I

.field private static final sKnownCombinationTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownImPropNameMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypeMap_StoI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypesMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMobilePhoneLabelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhoneTypesUnknownToContactsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 48
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/vcard/VCardUtils;->ENGDEBUG:Z

    .line 50
    nop

    .line 51
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 51
    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/vcard/VCardUtils;->FORCE_DEBUG:Z

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    .line 141
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "CAR"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "PAGER"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ISDN"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v5, "HOME"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "WORK"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "CELL"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "OTHER"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    .line 154
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 153
    const-string v10, "CALLBACK"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/16 v9, 0xa

    .line 156
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 155
    const-string v10, "COMPANY-MAIN"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/16 v9, 0xe

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "RADIO"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/16 v9, 0x10

    .line 159
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 158
    const-string v10, "TTY-TDD"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/16 v9, 0x13

    .line 161
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 160
    const-string v10, "ASSISTANT"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/16 v9, 0xd

    .line 163
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 162
    const-string v10, "OTHER-FAX"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/16 v9, 0xf

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "TLX"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const/16 v9, 0x14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "MSG"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v11, "VOICE"

    invoke-interface {v0, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    .line 170
    const-string v9, "MODEM"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v9, "BBS"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v9, "VIDEO"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "X-AIM"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const-string v9, "X-MSN"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v9, "X-YAHOO"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v9, "X-SKYPE-USERNAME"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "X-GOOGLE-TALK"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "X-ICQ"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "X-JABBER"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "X-QQ"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "X-NETMEETING"

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "X-CUSTOM-IM"

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v0, Ljava/util/HashSet;

    const-string v8, "MOBILE"

    const-string v10, "\u643a\u5e2f\u96fb\u8a71"

    const-string v11, "\u643a\u5e2f"

    const-string v12, "\u30b1\u30a4\u30bf\u30a4"

    const-string v13, "\uff79\uff72\uff80\uff72"

    filled-new-array {v8, v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownCombinationTypeMap:Ljava/util/Map;

    .line 197
    const/16 v8, 0x12

    .line 199
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 197
    const-string v10, "WORK;PAGER"

    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownCombinationTypeMap:Ljava/util/Map;

    const/16 v8, 0x11

    .line 202
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 200
    const-string v10, "WORK;CELL"

    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    new-instance v0, Ljava/util/HashSet;

    new-array v7, v7, [Ljava/lang/Character;

    const/16 v8, 0x5b

    .line 515
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v7, v1

    const/16 v1, 0x5d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v7, v2

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v7, v6

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v7, v5

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v7, v9

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v7, v3

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    .line 616
    new-array v0, v9, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    .line 620
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    return-void

    :array_0
    .array-data 4
        0x3a
        0x3b
        0x2c
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x3b
        0x3a
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    return-void
.end method

.method public static appearsLikeAndroidVCardQuotedPrintable(Ljava/lang/String;)Z
    .locals 5

    .line 751
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    .line 752
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 755
    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 756
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    .line 757
    return v2

    .line 755
    :cond_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 760
    :cond_2
    return v1

    .line 753
    :cond_3
    :goto_1
    return v2
.end method

.method public static varargs areAllEmpty([Ljava/lang/String;)Z
    .locals 5

    .line 727
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 728
    return v0

    .line 731
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 732
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 733
    return v2

    .line 731
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 736
    :cond_2
    return v0
.end method

.method public static constructListFromValue(Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 421
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 422
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 423
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_4

    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_4

    .line 424
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 426
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 427
    invoke-static {v6}, Lcom/android/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 428
    :cond_0
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 429
    invoke-static {v6}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 431
    :cond_1
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v7

    if-nez v7, :cond_2

    sget-boolean v7, Lcom/android/vcard/VCardUtils;->ENGDEBUG:Z

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/android/vcard/VCardUtils;->FORCE_DEBUG:Z

    if-eqz v7, :cond_2

    .line 433
    const-string v7, "MTK_vCard"

    const-string v8, "Unknown vCard type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_2
    invoke-static {v6}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .line 438
    :goto_1
    if-eqz v6, :cond_3

    .line 439
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    move v3, v5

    goto :goto_2

    .line 442
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    :goto_2
    goto :goto_3

    :cond_4
    const/16 v5, 0x3b

    if-ne v4, v5, :cond_5

    .line 445
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 448
    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 451
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    return-object v0
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 378
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    invoke-static {p0, p1, p2, p3}, Lcom/android/vcard/VCardUtils;->sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 387
    nop

    .line 388
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 389
    nop

    .line 390
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, p2

    goto :goto_0

    .line 388
    :cond_0
    const/4 p1, 0x1

    .line 392
    :goto_0
    array-length p3, p0

    move p4, p2

    :goto_1
    const/16 v1, 0x20

    if-ge p4, p3, :cond_3

    aget-object v2, p0, p4

    .line 393
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 394
    if-eqz p1, :cond_1

    .line 395
    move p1, p2

    goto :goto_2

    .line 397
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 402
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 403
    if-nez p1, :cond_4

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    :cond_4
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 537
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 538
    return v0

    .line 547
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 548
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    goto :goto_0

    .line 551
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 552
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_6

    .line 553
    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 554
    const/16 v6, 0x61

    if-gt v6, v5, :cond_2

    const/16 v6, 0x7b

    if-lt v5, v6, :cond_5

    :cond_2
    const/16 v6, 0x41

    if-gt v6, v5, :cond_3

    const/16 v6, 0x5b

    if-lt v5, v6, :cond_5

    :cond_3
    const/16 v6, 0x30

    if-gt v6, v5, :cond_4

    const/16 v6, 0x3a

    if-lt v5, v6, :cond_5

    :cond_4
    const/16 v6, 0x2d

    if-eq v5, v6, :cond_5

    .line 558
    return v3

    .line 552
    :cond_5
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_1

    .line 561
    :cond_6
    goto :goto_0

    .line 562
    :cond_7
    return v0
.end method

.method public static varargs containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z
    .locals 0

    .line 530
    if-nez p0, :cond_0

    .line 531
    const/4 p0, 0x1

    return p0

    .line 533
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 494
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 495
    return v0

    .line 499
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 500
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    goto :goto_0

    .line 503
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 504
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    .line 505
    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 506
    const/16 v6, 0x20

    if-gt v6, v5, :cond_3

    const/16 v6, 0x7e

    if-le v5, v6, :cond_2

    goto :goto_2

    .line 504
    :cond_2
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_1

    .line 507
    :cond_3
    :goto_2
    return v3

    .line 510
    :cond_4
    goto :goto_0

    .line 511
    :cond_5
    return v0
.end method

.method public static varargs containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z
    .locals 0

    .line 487
    if-nez p0, :cond_0

    .line 488
    const/4 p0, 0x1

    return p0

    .line 490
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static containsOnlyPrintableAscii(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 463
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 464
    return v0

    .line 466
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 467
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    goto :goto_0

    .line 470
    :cond_1
    invoke-static {v1}, Lcom/android/vcard/VCardUtils$TextUtilsPort;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 471
    const/4 p0, 0x0

    return p0

    .line 473
    :cond_2
    goto :goto_0

    .line 474
    :cond_3
    return v0
.end method

.method public static varargs containsOnlyPrintableAscii([Ljava/lang/String;)Z
    .locals 0

    .line 456
    if-nez p0, :cond_0

    .line 457
    const/4 p0, 0x1

    return p0

    .line 459
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static containsOnlyWhiteSpaces(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 573
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 574
    return v0

    .line 576
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 577
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    goto :goto_0

    .line 580
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 581
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    .line 582
    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 583
    return v3

    .line 581
    :cond_2
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_1

    .line 586
    :cond_3
    goto :goto_0

    .line 587
    :cond_4
    return v0
.end method

.method public static varargs containsOnlyWhiteSpaces([Ljava/lang/String;)Z
    .locals 0

    .line 566
    if-nez p0, :cond_0

    .line 567
    const/4 p0, 0x1

    return p0

    .line 569
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyWhiteSpaces(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static final convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 876
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    return-object p0

    .line 879
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 880
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 883
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    .line 884
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 886
    :try_start_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 887
    :catch_0
    move-exception p0

    .line 888
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to encode: charset="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MTK_vCard"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getAppropriateParser(I)Lcom/android/vcard/VCardParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 863
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    new-instance p0, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {p0}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    return-object p0

    .line 865
    :cond_0
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    new-instance p0, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {p0}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    return-object p0

    .line 867
    :cond_1
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 868
    new-instance p0, Lcom/android/vcard/VCardParser_V40;

    invoke-direct {p0}, Lcom/android/vcard/VCardParser_V40;-><init>()V

    return-object p0

    .line 870
    :cond_2
    new-instance p0, Lcom/android/vcard/exception/VCardException;

    const-string v0, "Version is not specified"

    invoke-direct {p0, v0}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPhoneNumberFormat(I)I
    .locals 0

    .line 369
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 370
    const/4 p0, 0x2

    return p0

    .line 372
    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 217
    if-nez p1, :cond_0

    .line 218
    const-string p1, ""

    .line 220
    :cond_0
    const/4 v0, -0x1

    .line 221
    const/4 v1, 0x0

    .line 222
    nop

    .line 223
    nop

    .line 225
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_f

    .line 226
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_4

    .line 227
    sget-object v5, Lcom/android/vcard/VCardUtils;->sKnownCombinationTypeMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 228
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 229
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 230
    nop

    .line 231
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 232
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_1

    .line 233
    nop

    .line 234
    move v8, v3

    goto :goto_2

    .line 236
    :cond_1
    goto :goto_1

    .line 231
    :cond_2
    move v8, v4

    .line 237
    :goto_2
    if-eqz v8, :cond_3

    .line 238
    sget-object p0, Lcom/android/vcard/VCardUtils;->sKnownCombinationTypeMap:Ljava/util/Map;

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 239
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 241
    :cond_3
    goto :goto_0

    .line 244
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v5, v3

    move v7, v5

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 245
    if-nez v8, :cond_5

    .line 246
    goto :goto_3

    .line 248
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 249
    const-string v10, "PREF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 250
    move v7, v4

    goto :goto_6

    .line 251
    :cond_6
    const-string v10, "FAX"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 252
    move v5, v4

    goto :goto_6

    .line 255
    :cond_7
    const-string v10, "X-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-gez v0, :cond_8

    .line 256
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 258
    :cond_8
    nop

    .line 260
    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_9

    .line 261
    goto :goto_3

    .line 264
    :cond_9
    sget-object v9, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 265
    if-eqz v9, :cond_c

    .line 266
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 279
    const-string v10, "@"

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 280
    const/4 v11, 0x6

    if-ne v8, v11, :cond_a

    if-lez v10, :cond_a

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v4

    if-lt v10, v8, :cond_b

    :cond_a
    if-ltz v0, :cond_b

    if-eqz v0, :cond_b

    if-ne v0, v2, :cond_d

    .line 285
    :cond_b
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    .line 287
    :cond_c
    if-gez v0, :cond_d

    .line 288
    nop

    .line 289
    move v0, v3

    move-object v1, v8

    goto :goto_6

    .line 287
    :cond_d
    :goto_5
    nop

    .line 292
    :goto_6
    goto :goto_3

    .line 244
    :cond_e
    move v3, v7

    goto :goto_7

    .line 225
    :cond_f
    move v5, v3

    .line 294
    :goto_7
    if-gez v0, :cond_11

    .line 295
    if-eqz v3, :cond_10

    .line 296
    const/16 v0, 0xc

    goto :goto_8

    .line 299
    :cond_10
    move v0, v4

    .line 302
    :cond_11
    :goto_8
    if-eqz v5, :cond_14

    .line 303
    if-ne v0, v4, :cond_12

    .line 304
    const/4 v0, 0x5

    goto :goto_9

    .line 305
    :cond_12
    const/4 p0, 0x3

    if-ne v0, p0, :cond_13

    .line 306
    const/4 v0, 0x4

    goto :goto_9

    .line 307
    :cond_13
    if-ne v0, v2, :cond_14

    .line 308
    const/16 v0, 0xd

    .line 311
    :cond_14
    :goto_9
    if-nez v0, :cond_15

    .line 312
    return-object v1

    .line 314
    :cond_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 208
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getPropertyNameForIm(I)Ljava/lang/String;
    .locals 1

    .line 331
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static guessImageType([B)Ljava/lang/String;
    .locals 8

    .line 704
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 705
    return-object v0

    .line 707
    :cond_0
    array-length v1, p0

    const/16 v2, 0x47

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-lt v1, v3, :cond_1

    aget-byte v1, p0, v6

    if-ne v1, v2, :cond_1

    aget-byte v1, p0, v4

    const/16 v7, 0x49

    if-ne v1, v7, :cond_1

    aget-byte v1, p0, v5

    const/16 v7, 0x46

    if-ne v1, v7, :cond_1

    .line 708
    const-string p0, "GIF"

    return-object p0

    .line 709
    :cond_1
    array-length v1, p0

    const/4 v7, 0x4

    if-lt v1, v7, :cond_2

    aget-byte v1, p0, v6

    const/16 v7, -0x77

    if-ne v1, v7, :cond_2

    aget-byte v1, p0, v4

    const/16 v7, 0x50

    if-ne v1, v7, :cond_2

    aget-byte v1, p0, v5

    const/16 v7, 0x4e

    if-ne v1, v7, :cond_2

    aget-byte v1, p0, v3

    if-ne v1, v2, :cond_2

    .line 714
    const-string p0, "PNG"

    return-object p0

    .line 715
    :cond_2
    array-length v1, p0

    if-lt v1, v5, :cond_3

    aget-byte v1, p0, v6

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    aget-byte p0, p0, v4

    const/16 v1, -0x28

    if-ne p0, v1, :cond_3

    .line 717
    const-string p0, "JPEG"

    return-object p0

    .line 719
    :cond_3
    return-object v0
.end method

.method public static isMobilePhoneLabel(Ljava/lang/String;)Z
    .locals 1

    .line 323
    const-string v0, "_AUTO_CELL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isV21Word(Ljava/lang/String;)Z
    .locals 6

    .line 600
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 601
    return v1

    .line 605
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 606
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 607
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 608
    const/16 v5, 0x20

    if-gt v5, v4, :cond_2

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_2

    sget-object v5, Lcom/android/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    int-to-char v4, v4

    .line 609
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 606
    :cond_1
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_0

    .line 610
    :cond_2
    :goto_1
    return v2

    .line 613
    :cond_3
    return v1
.end method

.method public static isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z
    .locals 1

    .line 327
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 777
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 778
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 779
    const/16 v5, 0x3d

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v1, -0x1

    if-ge v3, v5, :cond_1

    .line 780
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 781
    const/16 v7, 0x20

    if-eq v6, v7, :cond_0

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1

    .line 782
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    nop

    .line 784
    move v3, v5

    goto :goto_1

    .line 787
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 777
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 789
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 793
    if-eqz p1, :cond_3

    .line 794
    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 796
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 798
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 799
    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_8

    .line 800
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 801
    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 802
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 804
    :cond_4
    const/16 v6, 0xd

    if-ne v4, v6, :cond_6

    .line 805
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_7

    .line 808
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 809
    if-ne v6, v5, :cond_5

    .line 810
    move v3, v4

    .line 812
    :cond_5
    goto :goto_3

    .line 814
    :cond_6
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 799
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 817
    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 818
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_9

    .line 819
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    :cond_9
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 824
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 825
    array-length v0, p0

    move v1, v2

    :goto_5
    if-ge v1, v0, :cond_b

    aget-object v3, p0, v1

    .line 826
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 827
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 829
    :cond_a
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 832
    :cond_b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 833
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "MTK_vCard"

    if-eqz p1, :cond_c

    sget-boolean p1, Lcom/android/vcard/VCardUtils;->ENGDEBUG:Z

    if-eqz p1, :cond_c

    sget-boolean p1, Lcom/android/vcard/VCardUtils;->FORCE_DEBUG:Z

    if-eqz p1, :cond_c

    .line 834
    const-string p1, "Given raw string is empty."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_c
    nop

    .line 839
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    goto :goto_6

    .line 840
    :catch_0
    move-exception p1

    .line 841
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to decode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 845
    :goto_6
    nop

    .line 847
    :try_start_1
    invoke-static {p0}, Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;->decodeQuotedPrintable([B)[B

    move-result-object p0
    :try_end_1
    .catch Lcom/android/vcard/VCardUtils$DecoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 851
    goto :goto_7

    .line 848
    :catch_1
    move-exception p1

    .line 849
    const-string p1, "DecoderException is thrown."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    nop

    .line 854
    :goto_7
    :try_start_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 855
    :catch_2
    move-exception p1

    .line 856
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to encode: charset="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 336
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 337
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result p0

    .line 338
    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    .line 359
    aput-object p3, v0, v4

    .line 360
    aput-object p2, v0, v3

    .line 361
    aput-object p1, v0, v2

    goto :goto_0

    .line 340
    :cond_0
    new-array p0, v3, [Ljava/lang/String;

    aput-object p1, p0, v4

    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-array p0, v3, [Ljava/lang/String;

    aput-object p3, p0, v4

    .line 341
    invoke-static {p0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 342
    aput-object p3, v0, v4

    .line 343
    aput-object p2, v0, v3

    .line 344
    aput-object p1, v0, v2

    goto :goto_0

    .line 346
    :cond_1
    aput-object p1, v0, v4

    .line 347
    aput-object p2, v0, v3

    .line 348
    aput-object p3, v0, v2

    .line 350
    goto :goto_0

    .line 353
    :cond_2
    aput-object p2, v0, v4

    .line 354
    aput-object p3, v0, v3

    .line 355
    aput-object p1, v0, v2

    .line 356
    nop

    .line 365
    :goto_0
    return-object v0
.end method

.method public static toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 677
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const/4 p0, 0x0

    return-object p0

    .line 680
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 682
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 685
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 686
    invoke-static {v3}, Lcom/android/vcard/JapaneseUtils;->tryGetHalfWidthText(C)Ljava/lang/String;

    move-result-object v4

    .line 687
    if-eqz v4, :cond_1

    .line 688
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 690
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 682
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    goto :goto_0

    .line 693
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 11

    .line 646
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 647
    move-object p0, v1

    .line 651
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 653
    nop

    .line 654
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/16 v6, 0x22

    const/4 v7, 0x1

    if-ge v4, v2, :cond_4

    .line 655
    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    .line 656
    const/16 v9, 0x20

    if-lt v8, v9, :cond_3

    if-ne v8, v6, :cond_1

    .line 658
    goto :goto_2

    .line 660
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 661
    array-length v6, p1

    move v9, v3

    :goto_1
    if-ge v9, v6, :cond_3

    aget v10, p1, v9

    .line 662
    if-ne v8, v10, :cond_2

    .line 663
    nop

    .line 664
    move v5, v7

    goto :goto_2

    .line 661
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 654
    :cond_3
    :goto_2
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_0

    .line 669
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 670
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    new-array p1, v7, [Ljava/lang/String;

    aput-object p0, p1, v3

    invoke-static {p1}, Lcom/android/vcard/VCardUtils;->containsOnlyWhiteSpaces([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 672
    :cond_5
    if-eqz v5, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 673
    :cond_6
    move-object v1, p0

    goto :goto_4

    .line 671
    :cond_7
    :goto_3
    nop

    .line 670
    :goto_4
    return-object v1
.end method

.method public static toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 638
    sget-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    invoke-static {p0, v0}, Lcom/android/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 642
    sget-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    invoke-static {p0, v0}, Lcom/android/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
