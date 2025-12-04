.class public Lcom/android/vcard/VCardBuilder;
.super Ljava/lang/Object;
.source "VCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardBuilder$PostalStruct;
    }
.end annotation


# static fields
.field public static final DEFAULT_EMAIL_TYPE:I = 0x3

.field public static final DEFAULT_PHONE_TYPE:I = 0x1

.field public static final DEFAULT_POSTAL_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MTK_vCard"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final VCARD_DATA_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field private static final VCARD_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VCARD_DATA_VCARD:Ljava/lang/String; = "VCARD"

.field public static final VCARD_END_OF_LINE:Ljava/lang/String; = "\r\n"

.field private static final VCARD_ITEM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_PARAM_ENCODING_BASE64_AS_B:Ljava/lang/String; = "ENCODING=B"

.field private static final VCARD_PARAM_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VCARD_PARAM_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VCARD_PARAM_EQUAL:Ljava/lang/String; = "="

.field private static final VCARD_PARAM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_WS:Ljava/lang/String; = " "

.field private static final sAllowedAndroidPropertySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPostalTypePriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppendTypeParamName:Z

.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mCharset:Ljava/lang/String;

.field private mEndAppended:Z

.field private final mIsDoCoMo:Z

.field private final mIsJapaneseMobilePhone:Z

.field private final mIsV30OrV40:Z

.field private final mNeedsToConvertPhoneticString:Z

.field private final mOnlyOneNoteFieldIsAvailable:Z

.field private final mRefrainsQPToNameProperties:Z

.field private final mShouldAppendCharsetParam:Z

.field private final mShouldUseQuotedPrintable:Z

.field private final mUsesAndroidProperty:Z

.field private final mUsesDefactProperty:Z

.field private final mVCardCharsetParameter:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/nickname"

    const-string v2, "vnd.android.cursor.item/contact_event"

    const-string v3, "vnd.android.cursor.item/relation"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    .line 993
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    .line 994
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 5

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 137
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    const-string v1, "MTK_vCard"

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "Should not use vCard 4.0 when building vCard. It is not officially published yet."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    .line 143
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    .line 144
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    .line 145
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    .line 146
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    .line 147
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    .line 148
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    .line 149
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    .line 150
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->appendTypeParamName(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mAppendTypeParamName:Z

    .line 151
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    .line 157
    nop

    .line 158
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    const-string v4, "UTF-8"

    if-eqz v0, :cond_3

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    iput-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    .line 160
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 161
    const-string p1, "SHIFT_JIS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    iput-object p1, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 168
    :cond_5
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 171
    :cond_6
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 173
    :goto_2
    const-string p1, "CHARSET=SHIFT_JIS"

    iput-object p1, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_3

    .line 175
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 176
    const-string p1, "Use the charset \"UTF-8\" for export."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-object v4, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 180
    const-string p1, "CHARSET=UTF-8"

    iput-object p1, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_3

    .line 182
    :cond_8
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CHARSET="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    .line 186
    :goto_3
    invoke-virtual {p0}, Lcom/android/vcard/VCardBuilder;->clear()V

    .line 187
    return-void
.end method

.method private appendNamePropertiesV40(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 272
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    const-string v2, "MTK_vCard"

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    const-string v1, "Invalid flag is used in vCard 4.0 construction. Ignored."

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1
    const-string v1, ""

    const-string v3, "FN"

    if-eqz p1, :cond_8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    goto/16 :goto_2

    .line 290
    :cond_2
    nop

    .line 291
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v4

    .line 292
    const-string v5, "data3"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 293
    const-string v6, "data5"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 294
    const-string v6, "data2"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 295
    const-string v6, "data4"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 296
    const-string v6, "data6"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 297
    const-string v6, "data1"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 299
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 300
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 301
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 302
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 303
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 304
    invoke-virtual {v0, v3, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-object v0

    .line 307
    :cond_3
    move-object v8, v6

    goto :goto_0

    .line 310
    :cond_4
    move-object v8, v5

    :goto_0
    nop

    .line 311
    const-string v1, "data9"

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    nop

    .line 313
    const-string v5, "data8"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 314
    nop

    .line 315
    const-string v7, "data7"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 316
    invoke-direct {v0, v8}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 317
    invoke-direct {v0, v10}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 318
    invoke-direct {v0, v9}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 319
    move-object/from16 p1, v4

    invoke-direct {v0, v11}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    move-object/from16 v16, v3

    invoke-direct {v0, v12}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    move-object/from16 v17, v12

    iget-object v12, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v18, v11

    const-string v11, "N"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, ";"

    if-eqz v11, :cond_5

    .line 325
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 326
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 327
    :cond_5
    iget-object v11, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    invoke-direct {v0, v7}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    invoke-direct {v0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    iget-object v5, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v7, "SORT-AS="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_6
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 352
    const-string v1, "DISPLAY_NAME is empty."

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget v1, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 355
    invoke-static {v1}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v7

    .line 354
    move-object/from16 v11, v18

    move-object/from16 v12, v17

    invoke-static/range {v7 .. v12}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    move-object/from16 v2, v16

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    goto :goto_1

    .line 359
    :cond_7
    move-object/from16 v2, v16

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    iget-object v4, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :goto_1
    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    .line 368
    return-object v0

    .line 280
    :cond_8
    move-object v2, v3

    .line 281
    :goto_2
    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-object v0
.end method

.method private appendPhoneticNameFields(Landroid/content/ContentValues;)V
    .locals 12

    .line 561
    nop

    .line 562
    const-string v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    nop

    .line 564
    const-string v1, "data8"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 565
    nop

    .line 566
    const-string v2, "data7"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 567
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v2, :cond_0

    .line 568
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-static {p1}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 572
    :cond_0
    nop

    .line 573
    nop

    .line 574
    nop

    .line 578
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "X-IRMC-N"

    const-string v4, "SOUND"

    const-string v5, "\r\n"

    const-string v6, ":"

    const-string v7, ";"

    if-eqz v2, :cond_2

    .line 579
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 580
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 581
    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz p1, :cond_1

    .line 582
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_1
    return-void

    .line 595
    :cond_2
    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    goto/16 :goto_6

    .line 597
    :cond_3
    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 598
    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 599
    invoke-static {v2, v0, v1, p1}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "SORT-STRING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    iget v3, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_4

    new-array v3, v8, [Ljava/lang/String;

    aput-object v2, v3, v9

    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 607
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_4
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 613
    :cond_5
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    if-eqz v2, :cond_f

    .line 627
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v2, :cond_7

    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v9

    .line 633
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-array v2, v8, [Ljava/lang/String;

    aput-object v1, v2, v9

    .line 635
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-array v2, v8, [Ljava/lang/String;

    aput-object p1, v2, v9

    .line 637
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move v2, v8

    goto :goto_1

    :cond_7
    move v2, v9

    .line 643
    :goto_1
    if-eqz v2, :cond_8

    .line 644
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 645
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 648
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 650
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 653
    :goto_2
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    aput-object v2, v10, v9

    aput-object v3, v10, v8

    const/4 v11, 0x2

    aput-object v4, v10, v11

    invoke-direct {p0, v10}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 655
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :cond_9
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    nop

    .line 661
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 662
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    move v2, v9

    goto :goto_3

    .line 661
    :cond_a
    move v2, v8

    .line 665
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/16 v11, 0x20

    if-nez v10, :cond_c

    .line 666
    if-eqz v2, :cond_b

    .line 667
    move v2, v9

    goto :goto_4

    .line 669
    :cond_b
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 671
    :goto_4
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :cond_c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 674
    if-nez v2, :cond_d

    .line 675
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 677
    :cond_d
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_e
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 613
    :cond_f
    :goto_5
    nop

    .line 687
    :goto_6
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-eqz v2, :cond_1e

    .line 688
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    if-nez v2, :cond_14

    .line 689
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v2, :cond_10

    new-array v2, v8, [Ljava/lang/String;

    aput-object p1, v2, v9

    .line 691
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    move v2, v8

    goto :goto_7

    :cond_10
    move v2, v9

    .line 693
    :goto_7
    if-eqz v2, :cond_11

    .line 694
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 696
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 698
    :goto_8
    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v11, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    new-array v10, v8, [Ljava/lang/String;

    aput-object p1, v10, v9

    invoke-direct {p0, v10}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 700
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    :cond_12
    if-eqz v2, :cond_13

    .line 704
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    :cond_13
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    :cond_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 712
    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz p1, :cond_15

    new-array p1, v8, [Ljava/lang/String;

    aput-object v1, p1, v9

    .line 714
    invoke-static {p1}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    move p1, v8

    goto :goto_9

    :cond_15
    move p1, v9

    .line 716
    :goto_9
    if-eqz p1, :cond_16

    .line 717
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 719
    :cond_16
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 721
    :goto_a
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v10, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    new-array v4, v8, [Ljava/lang/String;

    aput-object v1, v4, v9

    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 723
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_17
    if-eqz p1, :cond_18

    .line 727
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_18
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 735
    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz p1, :cond_1a

    new-array p1, v8, [Ljava/lang/String;

    aput-object v0, p1, v9

    .line 737
    invoke-static {p1}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    move p1, v8

    goto :goto_b

    :cond_1a
    move p1, v9

    .line 739
    :goto_b
    if-eqz p1, :cond_1b

    .line 740
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 742
    :cond_1b
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 744
    :goto_c
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    new-array v2, v8, [Ljava/lang/String;

    aput-object v0, v2, v9

    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 746
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    :cond_1c
    if-eqz p1, :cond_1d

    .line 750
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_1d
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    :cond_1e
    return-void
.end method

.method private appendPostalsForDoCoMo(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1005
    nop

    .line 1006
    nop

    .line 1007
    nop

    .line 1008
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1009
    if-nez v4, :cond_0

    .line 1010
    goto :goto_0

    .line 1012
    :cond_0
    const-string v5, "data2"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1013
    sget-object v6, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1015
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v0

    .line 1016
    :goto_1
    if-ge v6, v2, :cond_3

    .line 1017
    nop

    .line 1018
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1019
    nop

    .line 1020
    if-nez v6, :cond_2

    .line 1021
    move v5, v3

    move-object v7, v4

    goto :goto_2

    .line 1020
    :cond_2
    move-object v1, v4

    move v2, v6

    .line 1024
    :cond_3
    goto :goto_0

    .line 1008
    :cond_4
    move-object v7, v1

    move v5, v3

    .line 1026
    :goto_2
    if-nez v7, :cond_5

    .line 1027
    const-string p1, "MTK_vCard"

    const-string v0, "Should not come here. Must have at least one postal data."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return-void

    .line 1031
    :cond_5
    const-string p1, "data3"

    invoke-virtual {v7, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1032
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    .line 1033
    return-void
.end method

.method private appendPostalsForGeneric(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1036
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ContentValues;

    .line 1037
    if-nez v4, :cond_0

    .line 1038
    goto :goto_0

    .line 1040
    :cond_0
    const-string v0, "data2"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1041
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1042
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 1043
    :goto_1
    const-string v0, "data3"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1044
    nop

    .line 1045
    const-string v0, "is_primary"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1046
    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 1047
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    nop

    .line 1048
    :goto_2
    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    .line 1049
    goto :goto_0

    .line 1050
    :cond_3
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/String;)V
    .locals 1

    .line 2088
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2089
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 2096
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 2097
    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mAppendTypeParamName:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v0, :cond_2

    .line 2098
    :cond_1
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    return-void
.end method

.method private appendTypeParameters(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2054
    nop

    .line 2055
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2056
    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ";"

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 2071
    :cond_0
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isV21Word(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2072
    goto :goto_0

    .line 2074
    :cond_1
    if-eqz v0, :cond_2

    .line 2075
    move v0, v3

    goto :goto_1

    .line 2077
    :cond_2
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_5

    .line 2057
    :cond_3
    :goto_2
    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2058
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 2059
    :cond_4
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2060
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2061
    goto :goto_0

    .line 2064
    :cond_5
    if-eqz v0, :cond_6

    .line 2065
    move v0, v3

    goto :goto_4

    .line 2067
    :cond_6
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    .line 2070
    nop

    .line 2081
    :goto_5
    goto :goto_0

    .line 2082
    :cond_7
    return-void
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 1

    .line 1762
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    .line 1765
    const-string p2, "VOICE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1767
    :cond_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    .line 1768
    if-eqz p1, :cond_1

    .line 1769
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1771
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MTK_vCard"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :goto_0
    return-void
.end method

.method private buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 529
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, v2

    .line 531
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 532
    :goto_0
    if-eqz v0, :cond_1

    .line 533
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 534
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 536
    :goto_1
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    new-array p1, v1, [Ljava/lang/String;

    aput-object p2, p1, v2

    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result p1

    const-string p2, ";"

    if-eqz p1, :cond_2

    .line 542
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_2
    if-eqz v0, :cond_3

    .line 546
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_3
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    return-void
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .locals 9

    .line 206
    const-string v0, "data3"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v1, "data5"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    const-string v2, "data2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    const-string v3, "data4"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    const-string v4, "data6"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    nop

    .line 212
    const-string v5, "data9"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    nop

    .line 214
    const-string v6, "data8"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    nop

    .line 216
    const-string v7, "data7"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 217
    const-string v8, "data1"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 218
    :goto_1
    return p1
.end method

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2130
    const-string p1, ""

    return-object p1

    .line 2133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2134
    nop

    .line 2135
    nop

    .line 2136
    nop

    .line 2139
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2144
    move v2, v1

    move v3, v2

    goto :goto_0

    .line 2140
    :catch_0
    move-exception v2

    .line 2141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Charset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be used. Try default charset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MTK_vCard"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    move v2, v1

    move v3, v2

    .line 2145
    :cond_1
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 2146
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "=%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2147
    add-int/lit8 v2, v2, 0x1

    .line 2148
    add-int/lit8 v3, v3, 0x3

    .line 2150
    const/16 v4, 0x43

    if-lt v3, v4, :cond_1

    .line 2158
    const-string v3, "=\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    move v3, v1

    goto :goto_0

    .line 2163
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2175
    const-string p1, ""

    return-object p1

    .line 2178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2180
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    .line 2181
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2182
    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    const/16 v5, 0xd

    if-eq v3, v5, :cond_7

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3e

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_3

    if-eq v3, v5, :cond_2

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_3

    .line 2233
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2184
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2185
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2186
    goto :goto_1

    .line 2207
    :cond_2
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v4, :cond_3

    .line 2208
    const-string v3, "\\\\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2209
    goto :goto_1

    .line 2216
    :cond_3
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v4, :cond_4

    .line 2217
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2218
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2220
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2222
    goto :goto_1

    .line 2225
    :cond_5
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v4, :cond_6

    .line 2226
    const-string v3, "\\,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2228
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2230
    goto :goto_1

    .line 2189
    :cond_7
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v1, :cond_8

    .line 2190
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2191
    if-ne v3, v4, :cond_8

    .line 2192
    goto :goto_1

    .line 2203
    :cond_8
    const-string v3, "\\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    nop

    .line 2180
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2238
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 227
    nop

    .line 228
    nop

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 230
    if-nez v2, :cond_0

    .line 231
    goto :goto_0

    .line 233
    :cond_0
    const-string v3, "is_super_primary"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 234
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    .line 236
    nop

    .line 237
    move-object v0, v2

    goto :goto_2

    .line 238
    :cond_1
    if-nez v0, :cond_3

    .line 241
    const-string v3, "is_primary"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 242
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    .line 243
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    move-object v0, v2

    goto :goto_1

    .line 247
    :cond_2
    if-nez v1, :cond_3

    .line 248
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    move-object v1, v2

    .line 252
    :cond_3
    :goto_1
    goto :goto_0

    .line 254
    :cond_4
    :goto_2
    if-nez v0, :cond_6

    .line 255
    if-eqz v1, :cond_5

    .line 257
    goto :goto_3

    .line 260
    :cond_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    goto :goto_3

    .line 254
    :cond_6
    move-object v1, v0

    .line 264
    :goto_3
    return-object v1
.end method

.method private varargs shouldAppendCharsetParam([Ljava/lang/String;)Z
    .locals 6

    .line 2117
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2118
    return v1

    .line 2120
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 2121
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v3, v5, v1

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2122
    return v4

    .line 2120
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2125
    :cond_2
    return v1
.end method

.method private splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 921
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 922
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 923
    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 924
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 927
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 921
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 930
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 931
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_2
    return-object v0
.end method

.method private tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/android/vcard/VCardBuilder$PostalStruct;
    .locals 12

    .line 1071
    const-string v0, "data5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    const-string v1, "data6"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1073
    const-string v2, "data4"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1074
    const-string v3, "data7"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1075
    const-string v4, "data8"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1076
    const-string v5, "data9"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1077
    const-string v6, "data10"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1078
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v9, 0x1

    aput-object v1, v7, v9

    const/4 v10, 0x2

    aput-object v2, v7, v10

    const/4 v10, 0x3

    aput-object v3, v7, v10

    const/4 v10, 0x4

    aput-object v4, v7, v10

    const/4 v10, 0x5

    aput-object v5, v7, v10

    const/4 v10, 0x6

    aput-object v6, v7, v10

    .line 1081
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->areAllEmpty([Ljava/lang/String;)Z

    move-result v10

    const-string v11, ";"

    if-nez v10, :cond_3

    .line 1082
    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz p1, :cond_0

    .line 1084
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    nop

    .line 1085
    :goto_0
    nop

    .line 1086
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result p1

    .line 1093
    xor-int/2addr p1, v9

    .line 1118
    if-eqz v8, :cond_1

    .line 1119
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1121
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1122
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1123
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1124
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1126
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1129
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1130
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1131
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1132
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1133
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1134
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1135
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1138
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1141
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    :cond_2
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    new-instance v0, Lcom/android/vcard/VCardBuilder$PostalStruct;

    .line 1154
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, p1, v1}, Lcom/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    .line 1153
    return-object v0

    .line 1157
    :cond_3
    nop

    .line 1158
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1160
    const/4 p1, 0x0

    return-object p1

    .line 1162
    :cond_4
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v0, :cond_5

    new-array v0, v9, [Ljava/lang/String;

    aput-object p1, v0, v8

    .line 1164
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v9

    goto :goto_2

    :cond_5
    move v0, v8

    .line 1165
    :goto_2
    new-array v1, v9, [Ljava/lang/String;

    aput-object p1, v1, v8

    .line 1166
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    .line 1168
    xor-int/2addr v1, v9

    if-eqz v0, :cond_6

    .line 1169
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 1171
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1177
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1178
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    new-instance p1, Lcom/android/vcard/VCardBuilder$PostalStruct;

    .line 1186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    .line 1185
    return-object p1
.end method


# virtual methods
.method public appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5

    .line 1872
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1873
    return-void

    .line 1875
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1876
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0xf

    if-gt v2, v3, :cond_2

    .line 1877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1878
    if-nez v3, :cond_1

    .line 1879
    const-string v3, ""

    .line 1881
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1876
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1884
    :cond_2
    iget-boolean p2, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 1886
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    move p2, v2

    .line 1887
    :goto_1
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v3, :cond_4

    .line 1889
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 1890
    :goto_2
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "X-ANDROID-CUSTOM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    const-string v2, ";"

    if-eqz p2, :cond_5

    .line 1892
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    :cond_5
    if-eqz v1, :cond_6

    .line 1896
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    :cond_6
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1903
    if-eqz v1, :cond_7

    .line 1904
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 1910
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1912
    :goto_4
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    goto :goto_3

    .line 1915
    :cond_8
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    return-void
.end method

.method public appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1551
    const-string v0, "CELL"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    .line 1583
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Email type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MTK_vCard"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    move-object p2, v2

    goto :goto_0

    .line 1579
    :cond_0
    nop

    .line 1580
    move-object p2, v0

    goto :goto_0

    .line 1575
    :cond_1
    nop

    .line 1576
    move-object p2, v2

    goto :goto_0

    .line 1571
    :cond_2
    nop

    .line 1572
    const-string p2, "WORK"

    goto :goto_0

    .line 1567
    :cond_3
    nop

    .line 1568
    const-string p2, "HOME"

    goto :goto_0

    .line 1553
    :cond_4
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1554
    move-object p2, v0

    goto :goto_0

    .line 1556
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz p1, :cond_6

    .line 1557
    goto :goto_0

    .line 1558
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    new-array p1, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 1559
    invoke-static {p1}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1560
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1562
    :cond_7
    nop

    .line 1564
    move-object p2, v2

    .line 1589
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1590
    if-eqz p4, :cond_8

    .line 1591
    const-string p4, "PREF"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_9

    .line 1594
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    :cond_9
    const-string p2, "EMAIL"

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1599
    return-void
.end method

.method public appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 937
    nop

    .line 938
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 939
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 940
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 941
    const-string v5, "data1"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 942
    if-eqz v5, :cond_0

    .line 943
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 945
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 946
    goto :goto_0

    .line 948
    :cond_1
    const-string v3, "data2"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 949
    if-eqz v3, :cond_2

    .line 950
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    .line 951
    :goto_1
    const-string v6, "data3"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 952
    const-string v7, "is_primary"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 953
    if-eqz v4, :cond_3

    .line 954
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v0

    goto :goto_2

    :cond_3
    move v4, v1

    .line 955
    :goto_2
    nop

    .line 956
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 957
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 958
    invoke-virtual {p0, v3, v6, v5, v4}, Lcom/android/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 960
    :cond_4
    move v3, v0

    goto :goto_0

    .line 938
    :cond_5
    move v3, v1

    .line 963
    :cond_6
    if-nez v3, :cond_7

    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz p1, :cond_7

    .line 964
    const-string p1, ""

    invoke-virtual {p0, v0, p1, p1, v1}, Lcom/android/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 967
    :cond_7
    return-object p0
.end method

.method public appendEvents(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 1399
    if-eqz p1, :cond_b

    .line 1400
    nop

    .line 1401
    nop

    .line 1402
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1403
    if-nez v2, :cond_0

    .line 1404
    goto :goto_0

    .line 1406
    :cond_0
    const-string v3, "data2"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1408
    if-eqz v3, :cond_1

    .line 1409
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 1411
    :cond_1
    const/4 v3, 0x2

    .line 1413
    :goto_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    .line 1414
    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1415
    if-nez v3, :cond_2

    .line 1416
    goto :goto_0

    .line 1418
    :cond_2
    nop

    .line 1419
    const-string v4, "is_super_primary"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1420
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 1421
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    move v4, v6

    .line 1422
    :goto_2
    if-eqz v4, :cond_4

    .line 1424
    nop

    .line 1425
    move-object v0, v3

    goto :goto_6

    .line 1427
    :cond_4
    nop

    .line 1428
    const-string v4, "is_primary"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1429
    if-eqz v2, :cond_5

    .line 1430
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_5

    goto :goto_3

    :cond_5
    move v5, v6

    .line 1431
    :goto_3
    if-eqz v5, :cond_6

    .line 1433
    move-object v0, v3

    goto :goto_4

    .line 1434
    :cond_6
    if-nez v1, :cond_7

    .line 1436
    move-object v1, v3

    .line 1438
    :cond_7
    :goto_4
    goto :goto_5

    :cond_8
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v3, :cond_7

    .line 1440
    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {p0, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1442
    :goto_5
    goto :goto_0

    .line 1443
    :cond_9
    :goto_6
    const-string p1, "BDAY"

    if-eqz v0, :cond_a

    .line 1444
    nop

    .line 1445
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1444
    invoke-virtual {p0, p1, v0}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1446
    :cond_a
    if-eqz v1, :cond_b

    .line 1447
    nop

    .line 1448
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1447
    invoke-virtual {p0, p1, v0}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    :cond_b
    :goto_7
    return-object p0
.end method

.method public appendIms(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 1191
    if-eqz p1, :cond_e

    .line 1192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1193
    const-string v1, "data5"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1194
    if-nez v1, :cond_0

    .line 1195
    goto :goto_0

    .line 1198
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "data1"

    if-ne v2, v3, :cond_2

    .line 1199
    nop

    .line 1200
    const-string v1, "data6"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1203
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_1
    nop

    .line 1206
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    const-string v1, "X-CUSTOM-IM"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1207
    goto :goto_0

    .line 1210
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->getPropertyNameForIm(I)Ljava/lang/String;

    move-result-object v1

    .line 1211
    if-nez v1, :cond_3

    .line 1212
    goto :goto_0

    .line 1214
    :cond_3
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1215
    if-eqz v2, :cond_4

    .line 1216
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1218
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1219
    goto :goto_0

    .line 1223
    :cond_5
    const-string v3, "data2"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1224
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_6
    const/4 v3, 0x3

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v5, :cond_8

    const/4 v6, 0x2

    if-eq v3, v6, :cond_7

    .line 1240
    goto :goto_2

    .line 1230
    :cond_7
    nop

    .line 1231
    const-string v4, "WORK"

    goto :goto_2

    .line 1226
    :cond_8
    nop

    .line 1227
    const-string v4, "HOME"

    goto :goto_2

    .line 1234
    :cond_9
    const-string v3, "data3"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1235
    if-eqz v3, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 1236
    :cond_a
    nop

    .line 1246
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1248
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_b
    const-string v4, "is_primary"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1251
    const/4 v4, 0x0

    if-eqz v0, :cond_c

    .line 1252
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_c

    goto :goto_3

    :cond_c
    move v5, v4

    .line 1253
    :goto_3
    if-eqz v5, :cond_d

    .line 1254
    const-string v0, "PREF"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    :cond_d
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1258
    goto/16 :goto_0

    .line 1260
    :cond_e
    return-object p0
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1955
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1956
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    .line 1965
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1966
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1959
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 1960
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1970
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1971
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1976
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    const-string p1, ";"

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1981
    :cond_0
    if-eqz p4, :cond_1

    .line 1982
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1987
    :cond_1
    if-eqz p5, :cond_2

    .line 1988
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1994
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1997
    :goto_0
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 2010
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    const-string p1, ";"

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 2015
    :cond_0
    if-eqz p4, :cond_1

    .line 2016
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    :cond_1
    if-eqz p5, :cond_2

    .line 2020
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    :cond_2
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    const/4 p2, 0x1

    .line 2026
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 2028
    if-eqz p5, :cond_3

    .line 2029
    invoke-direct {p0, p4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    .line 2035
    :cond_3
    invoke-direct {p0, p4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2038
    :goto_1
    if-eqz p2, :cond_4

    .line 2039
    const/4 p2, 0x0

    goto :goto_2

    .line 2041
    :cond_4
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    :goto_2
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    goto :goto_0

    .line 2045
    :cond_5
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 2004
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 2005
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1920
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1921
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1925
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1926
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1930
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 1931
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    .line 1932
    xor-int/lit8 v7, v1, 0x1

    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v1, :cond_0

    new-array v1, v0, [Ljava/lang/String;

    aput-object p3, v1, v2

    .line 1934
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v2

    .line 1935
    :goto_0
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1937
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1941
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1943
    invoke-static {p3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v2

    .line 1944
    :goto_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v0, :cond_1

    .line 1946
    invoke-static {p3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    move v8, v2

    .line 1947
    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1949
    return-void
.end method

.method public appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 377
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->appendNamePropertiesV40(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v0

    return-object v0

    .line 381
    :cond_0
    const-string v1, "FN"

    const-string v2, ""

    const-string v3, "N"

    if-eqz p1, :cond_14

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_9

    .line 394
    :cond_1
    nop

    .line 395
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v4

    .line 396
    const-string v5, "data3"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 397
    const-string v6, "data5"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 398
    const-string v6, "data2"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 399
    const-string v6, "data4"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 400
    const-string v6, "data6"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 401
    const-string v6, "data1"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 403
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v11, "\r\n"

    const-string v10, ";"

    if-eqz v7, :cond_6

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 503
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 506
    invoke-direct {v0, v3, v6}, Lcom/android/vcard/VCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-direct {v0, v1, v6}, Lcom/android/vcard/VCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, v4

    goto/16 :goto_8

    .line 517
    :cond_3
    iget v5, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v5}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 518
    invoke-virtual {v0, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p1, v4

    goto/16 :goto_8

    .line 520
    :cond_4
    iget-boolean v1, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v1, :cond_5

    .line 521
    invoke-virtual {v0, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p1, v4

    goto/16 :goto_8

    .line 520
    :cond_5
    move-object/from16 p1, v4

    goto/16 :goto_8

    .line 404
    :cond_6
    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v5, v2, v16

    const/4 v9, 0x1

    aput-object v13, v2, v9

    const/4 v7, 0x2

    aput-object v12, v2, v7

    const/4 v7, 0x3

    aput-object v14, v2, v7

    const/4 v7, 0x4

    aput-object v15, v2, v7

    .line 405
    invoke-direct {v0, v2}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v2

    .line 406
    iget-boolean v7, v0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v7, :cond_8

    new-array v7, v9, [Ljava/lang/String;

    aput-object v5, v7, v16

    .line 408
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-array v7, v9, [Ljava/lang/String;

    aput-object v13, v7, v16

    .line 409
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-array v7, v9, [Ljava/lang/String;

    aput-object v12, v7, v16

    .line 410
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-array v7, v9, [Ljava/lang/String;

    aput-object v14, v7, v16

    .line 411
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-array v7, v9, [Ljava/lang/String;

    aput-object v15, v7, v16

    .line 412
    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    move/from16 v17, v9

    goto :goto_1

    :cond_8
    move/from16 v17, v16

    .line 415
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 416
    move-object/from16 p1, v4

    move v4, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    goto :goto_2

    .line 418
    :cond_9
    iget v6, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 419
    invoke-static {v6}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v6

    .line 418
    move-object v7, v5

    move-object v8, v12

    move-object/from16 p1, v4

    move v4, v9

    move-object v9, v13

    move-object/from16 v18, v10

    move-object v10, v14

    move-object/from16 v19, v11

    move-object v11, v15

    invoke-static/range {v6 .. v11}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 422
    :goto_2
    new-array v7, v4, [Ljava/lang/String;

    aput-object v6, v7, v16

    .line 423
    invoke-direct {v0, v7}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v7

    .line 424
    iget-boolean v8, v0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v8, :cond_a

    new-array v8, v4, [Ljava/lang/String;

    aput-object v6, v8, v16

    .line 426
    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    move/from16 v16, v4

    goto :goto_3

    :cond_a
    nop

    .line 433
    :goto_3
    if-eqz v17, :cond_b

    .line 434
    invoke-direct {v0, v5}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-direct {v0, v13}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-direct {v0, v12}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 437
    invoke-direct {v0, v14}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 438
    invoke-direct {v0, v15}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 440
    :cond_b
    invoke-direct {v0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 441
    invoke-direct {v0, v13}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 442
    invoke-direct {v0, v12}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 443
    invoke-direct {v0, v14}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 444
    invoke-direct {v0, v15}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 448
    :goto_4
    if-eqz v16, :cond_c

    .line 449
    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_c
    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 451
    :goto_5
    iget-object v12, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-boolean v3, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    const-string v12, "ENCODING=QUOTED-PRINTABLE"

    const-string v13, ":"

    if-eqz v3, :cond_f

    .line 453
    if-eqz v2, :cond_d

    .line 454
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 453
    :cond_d
    move-object/from16 v3, v18

    .line 457
    :goto_6
    if-eqz v17, :cond_e

    .line 458
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_e
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 469
    :cond_f
    move-object/from16 v3, v18

    if-eqz v2, :cond_10

    .line 470
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_10
    if-eqz v17, :cond_11

    .line 474
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_11
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :goto_7
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    if-eqz v7, :cond_12

    .line 493
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_12
    if-eqz v16, :cond_13

    .line 497
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_13
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    nop

    .line 524
    :goto_8
    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    .line 525
    return-object v0

    .line 382
    :cond_14
    :goto_9
    iget v4, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 386
    invoke-virtual {v0, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 388
    :cond_15
    iget-boolean v1, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v1, :cond_16

    .line 389
    invoke-virtual {v0, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_16
    :goto_a
    return-object v0
.end method

.method public appendNickNames(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 762
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v0, :cond_0

    .line 763
    const/4 v0, 0x0

    goto :goto_0

    .line 764
    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v0, :cond_4

    .line 765
    const/4 v0, 0x1

    .line 770
    :goto_0
    if-eqz p1, :cond_3

    .line 771
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 772
    const-string v2, "data1"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 773
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 774
    goto :goto_1

    .line 776
    :cond_1
    if-eqz v0, :cond_2

    .line 777
    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {p0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_2

    .line 779
    :cond_2
    const-string v1, "NICKNAME"

    invoke-virtual {p0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :goto_2
    goto :goto_1

    .line 783
    :cond_3
    return-object p0

    .line 768
    :cond_4
    return-object p0
.end method

.method public appendNotes(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 1350
    if-eqz p1, :cond_8

    .line 1351
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    const-string v1, "NOTE"

    const-string v2, "data1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1353
    nop

    .line 1354
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1355
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1356
    if-nez v6, :cond_0

    .line 1357
    const-string v6, ""

    .line 1359
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1360
    if-eqz v5, :cond_1

    .line 1361
    move v5, v3

    goto :goto_1

    .line 1363
    :cond_1
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1365
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    :cond_2
    goto :goto_0

    .line 1368
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1371
    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v3

    .line 1372
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    .line 1373
    xor-int/2addr v0, v4

    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v2, :cond_4

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    .line 1375
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    nop

    .line 1376
    :goto_2
    invoke-virtual {p0, v1, p1, v0, v3}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1378
    goto :goto_5

    .line 1379
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1380
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1381
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1382
    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v3

    .line 1383
    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v5

    .line 1384
    xor-int/2addr v5, v4

    iget-boolean v6, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v6, :cond_6

    new-array v6, v4, [Ljava/lang/String;

    aput-object v0, v6, v3

    .line 1386
    invoke-static {v6}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v4

    goto :goto_4

    :cond_6
    move v6, v3

    .line 1387
    :goto_4
    invoke-virtual {p0, v1, v0, v5, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1390
    :cond_7
    goto :goto_3

    .line 1393
    :cond_8
    :goto_5
    return-object p0
.end method

.method public appendOrganizations(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 1282
    if-eqz p1, :cond_9

    .line 1283
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1284
    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1285
    if-eqz v1, :cond_0

    .line 1286
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1288
    :cond_0
    const-string v2, "data5"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1289
    if-eqz v2, :cond_1

    .line 1290
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1292
    :cond_1
    const-string v3, "data4"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1293
    if-eqz v0, :cond_2

    .line 1294
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1297
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1298
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1299
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1302
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1303
    const/16 v1, 0x3b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1305
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1308
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 1309
    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v2

    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v5, :cond_6

    new-array v5, v2, [Ljava/lang/String;

    aput-object v1, v5, v4

    .line 1311
    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v2

    goto :goto_1

    :cond_6
    move v5, v4

    .line 1308
    :goto_1
    const-string v6, "ORG"

    invoke-virtual {p0, v6, v1, v3, v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1314
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v4

    .line 1315
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v3, :cond_7

    new-array v3, v2, [Ljava/lang/String;

    aput-object v0, v3, v4

    .line 1317
    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move v2, v4

    .line 1314
    :goto_2
    const-string v3, "TITLE"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1319
    :cond_8
    goto/16 :goto_0

    .line 1321
    :cond_9
    return-object p0
.end method

.method public appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/vcard/VCardPhoneNumberTranslationCallback;",
            ")",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 788
    nop

    .line 789
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    .line 790
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 791
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 792
    const-string v5, "data2"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 793
    const-string v6, "data3"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 794
    const-string v7, "is_primary"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 795
    if-eqz v7, :cond_0

    .line 796
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_0

    move v7, v1

    goto :goto_1

    :cond_0
    move v7, v0

    .line 797
    :goto_1
    const-string v8, "data1"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 798
    if-eqz v4, :cond_1

    .line 799
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 801
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 802
    goto :goto_0

    .line 805
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v1

    .line 809
    :goto_2
    if-eqz p2, :cond_4

    .line 810
    invoke-interface {p2, v4, v5, v6, v7}, Lcom/android/vcard/VCardPhoneNumberTranslationCallback;->onValueReceived(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 812
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 813
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 814
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5, v6, v4, v7}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 816
    :cond_4
    const/4 v8, 0x6

    if-eq v5, v8, :cond_e

    iget v8, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 817
    invoke-static {v8}, Lcom/android/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v8

    if-eqz v8, :cond_5

    goto/16 :goto_6

    .line 825
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 826
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 827
    goto :goto_0

    .line 829
    :cond_6
    nop

    .line 830
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 831
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 835
    nop

    .line 841
    invoke-static {v4, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 842
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    .line 844
    move v10, v0

    :goto_4
    if-ge v10, v9, :cond_9

    .line 845
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 846
    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-nez v12, :cond_7

    const/16 v12, 0x2b

    if-eq v11, v12, :cond_7

    const/16 v12, 0x70

    if-eq v11, v12, :cond_7

    const/16 v12, 0x77

    if-eq v11, v12, :cond_7

    const/16 v12, 0x50

    if-eq v11, v12, :cond_7

    const/16 v12, 0x57

    if-eq v11, v12, :cond_7

    const/16 v12, 0x20

    if-eq v11, v12, :cond_7

    const/16 v12, 0x2c

    if-eq v11, v12, :cond_7

    const/16 v12, 0x3b

    if-eq v11, v12, :cond_7

    const/16 v12, 0x2d

    if-eq v11, v12, :cond_7

    const/16 v12, 0x2f

    if-eq v11, v12, :cond_7

    const/16 v12, 0x2a

    if-eq v11, v12, :cond_7

    const/16 v12, 0x23

    if-eq v11, v12, :cond_7

    const/16 v12, 0x2e

    if-ne v11, v12, :cond_8

    .line 852
    :cond_7
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 844
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 855
    :cond_9
    iget v9, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 856
    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    .line 857
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 860
    goto :goto_5

    .line 862
    :cond_a
    move-object v8, v4

    .line 867
    :goto_5
    iget v9, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v9}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 868
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 869
    const-string v9, "tel:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 870
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 874
    :cond_b
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v8, v7}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 877
    :cond_c
    goto/16 :goto_3

    .line 830
    :cond_d
    move v3, v1

    goto :goto_7

    .line 819
    :cond_e
    :goto_6
    nop

    .line 820
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 821
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 822
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v4, v7}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 881
    :cond_f
    move v3, v1

    :cond_10
    :goto_7
    goto/16 :goto_0

    .line 789
    :cond_11
    move v3, v0

    .line 884
    :cond_12
    if-nez v3, :cond_13

    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz p1, :cond_13

    .line 885
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 888
    :cond_13
    return-object p0
.end method

.method public appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1782
    const-string v1, "PHOTO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v2, :cond_0

    .line 1785
    const-string v2, "ENCODING=B"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1787
    :cond_0
    const-string v2, "ENCODING=BASE64"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    invoke-direct {p0, v0, p2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1791
    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1795
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1796
    nop

    .line 1797
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1798
    nop

    .line 1799
    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4b

    .line 1800
    const-string v3, " "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v2, v4

    .line 1801
    nop

    .line 1802
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v6, v0, :cond_2

    .line 1803
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1804
    add-int/lit8 v7, v7, 0x1

    .line 1805
    if-le v7, v2, :cond_1

    .line 1806
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    nop

    .line 1809
    move v2, v4

    move v7, v5

    .line 1802
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1812
    :cond_2
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    return-void
.end method

.method public appendPhotos(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 1325
    if-eqz p1, :cond_4

    .line 1326
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1327
    if-nez v0, :cond_0

    .line 1328
    goto :goto_0

    .line 1330
    :cond_0
    const-string v1, "data15"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1331
    if-nez v0, :cond_1

    .line 1332
    goto :goto_0

    .line 1334
    :cond_1
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->guessImageType([B)Ljava/lang/String;

    move-result-object v1

    .line 1335
    if-nez v1, :cond_2

    .line 1336
    const-string v0, "MTK_vCard"

    const-string v1, "Unknown photo type. Ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    goto :goto_0

    .line 1340
    :cond_2
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 1341
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1342
    invoke-virtual {p0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    :cond_3
    goto :goto_0

    .line 1346
    :cond_4
    return-object p0
.end method

.method public appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V
    .locals 3

    .line 1476
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/android/vcard/VCardBuilder$PostalStruct;

    move-result-object p3

    .line 1477
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 1478
    if-eqz p5, :cond_0

    .line 1479
    nop

    .line 1480
    nop

    .line 1481
    const-string p3, ""

    move p5, v0

    move v1, p5

    goto :goto_0

    .line 1483
    :cond_0
    return-void

    .line 1486
    :cond_1
    iget-boolean p5, p3, Lcom/android/vcard/VCardBuilder$PostalStruct;->reallyUseQuotedPrintable:Z

    .line 1487
    iget-boolean v1, p3, Lcom/android/vcard/VCardBuilder$PostalStruct;->appendCharset:Z

    .line 1488
    iget-object p3, p3, Lcom/android/vcard/VCardBuilder$PostalStruct;->addressData:Ljava/lang/String;

    .line 1492
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1493
    if-eqz p4, :cond_2

    .line 1494
    const-string p4, "PREF"

    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1496
    :cond_2
    const/4 p4, 0x1

    if-eqz p1, :cond_6

    if-eq p1, p4, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    .line 1521
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown StructuredPostal type: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MTK_vCard"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1517
    :cond_3
    const-string p1, "OTHER"

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1518
    goto :goto_1

    .line 1502
    :cond_4
    const-string p1, "WORK"

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    goto :goto_1

    .line 1498
    :cond_5
    const-string p1, "HOME"

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    goto :goto_1

    .line 1506
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    new-array p1, p4, [Ljava/lang/String;

    aput-object p2, p1, v0

    .line 1507
    invoke-static {p1}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1512
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "X-"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, "ADR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-string p2, ";"

    if-nez p1, :cond_8

    .line 1528
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1531
    :cond_8
    if-eqz v1, :cond_9

    .line 1536
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    :cond_9
    if-eqz p5, :cond_a

    .line 1540
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    :cond_a
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    return-void
.end method

.method public appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 971
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 980
    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_1

    .line 981
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->appendPostalsForDoCoMo(Ljava/util/List;)V

    goto :goto_1

    .line 983
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->appendPostalsForGeneric(Ljava/util/List;)V

    goto :goto_1

    .line 972
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz p1, :cond_3

    .line 973
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v0, "ADR"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v0, "HOME"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    :cond_3
    :goto_1
    return-object p0
.end method

.method public appendRelation(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 1455
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1456
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1457
    if-nez v0, :cond_0

    .line 1458
    goto :goto_0

    .line 1460
    :cond_0
    const-string v1, "vnd.android.cursor.item/relation"

    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1461
    goto :goto_0

    .line 1463
    :cond_1
    return-object p0
.end method

.method public appendSipAddresses(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 1826
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v0, :cond_0

    .line 1827
    const/4 v0, 0x0

    goto :goto_0

    .line 1828
    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-eqz v0, :cond_8

    .line 1829
    const/4 v0, 0x1

    .line 1834
    :goto_0
    if-eqz p1, :cond_7

    .line 1835
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1836
    const-string v2, "data1"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1837
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1838
    goto :goto_1

    .line 1840
    :cond_1
    const-string v2, "sip:"

    if-eqz v0, :cond_4

    .line 1842
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1843
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1844
    goto :goto_1

    .line 1846
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1849
    :cond_3
    const-string v2, "X-SIP"

    invoke-virtual {p0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1851
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1852
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1855
    :cond_5
    iget v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1858
    const-string v2, "TEL"

    goto :goto_2

    .line 1861
    :cond_6
    const-string v2, "IMPP"

    .line 1863
    :goto_2
    invoke-virtual {p0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    :goto_3
    goto :goto_1

    .line 1867
    :cond_7
    return-object p0

    .line 1831
    :cond_8
    return-object p0
.end method

.method public appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1603
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "TEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    if-nez p1, :cond_0

    .line 1608
    const/4 p1, 0x7

    goto :goto_0

    .line 1610
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1613
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1614
    const-string v1, "PAGER"

    const-string v2, "FAX"

    const-string v3, "HOME"

    const-string v4, "VOICE"

    const/4 v5, 0x1

    const-string v6, "CELL"

    const-string v7, "WORK"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 1699
    :pswitch_0
    const-string p2, "MSG"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    goto/16 :goto_2

    .line 1732
    :pswitch_1
    const-string p2, "ASSISTANT"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    goto/16 :goto_2

    .line 1689
    :pswitch_2
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    iget-boolean p2, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz p2, :cond_1

    .line 1692
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1694
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    goto/16 :goto_2

    .line 1684
    :pswitch_3
    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object p2

    .line 1685
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1684
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1686
    goto/16 :goto_2

    .line 1728
    :pswitch_4
    const-string p2, "TTY-TDD"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    goto/16 :goto_2

    .line 1680
    :pswitch_5
    const-string p2, "TLX"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1681
    goto/16 :goto_2

    .line 1724
    :pswitch_6
    const-string p2, "RADIO"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1725
    goto/16 :goto_2

    .line 1676
    :pswitch_7
    const-string p2, "OTHER-FAX"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    goto/16 :goto_2

    .line 1672
    :pswitch_8
    nop

    .line 1673
    move p4, v5

    goto/16 :goto_2

    .line 1668
    :pswitch_9
    const-string p2, "ISDN"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    goto/16 :goto_2

    .line 1663
    :pswitch_a
    const-string p2, "COMPANY-MAIN"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    nop

    .line 1665
    move p4, v5

    goto/16 :goto_2

    .line 1658
    :pswitch_b
    const-string p2, "CAR"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    goto/16 :goto_2

    .line 1654
    :pswitch_c
    const-string p2, "CALLBACK"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    goto/16 :goto_2

    .line 1650
    :pswitch_d
    const-string p2, "OTHER"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    goto/16 :goto_2

    .line 1640
    :pswitch_e
    iget-boolean p2, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz p2, :cond_2

    .line 1643
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1645
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    goto/16 :goto_2

    .line 1626
    :pswitch_f
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object p2

    .line 1627
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1626
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1628
    goto/16 :goto_2

    .line 1631
    :pswitch_10
    filled-new-array {v7, v2}, [Ljava/lang/String;

    move-result-object p2

    .line 1632
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1631
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1633
    goto :goto_2

    .line 1621
    :pswitch_11
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object p2

    .line 1622
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1621
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1623
    goto :goto_2

    .line 1636
    :pswitch_12
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    goto :goto_2

    .line 1616
    :pswitch_13
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p2

    .line 1617
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1616
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1618
    goto :goto_2

    .line 1703
    :pswitch_14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1705
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1706
    :cond_3
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1707
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1708
    :cond_4
    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v1, :cond_5

    .line 1710
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1712
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1713
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1714
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1715
    :cond_6
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    :cond_7
    :goto_1
    nop

    .line 1743
    :goto_2
    if-eqz p4, :cond_8

    .line 1744
    const-string p2, "PREF"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1748
    iget-object p2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/vcard/VCardBuilder;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1750
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1753
    :goto_3
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    iget-object p1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public appendWebsites(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .line 1264
    if-eqz p1, :cond_2

    .line 1265
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1266
    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1267
    if-eqz v0, :cond_0

    .line 1268
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1273
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1274
    const-string v1, "URL"

    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :cond_1
    goto :goto_0

    .line 1278
    :cond_2
    return-object p0
.end method

.method public clear()V
    .locals 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    .line 192
    const-string v0, "BEGIN"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    const-string v1, "VERSION"

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "4.0"

    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_0
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    const-string v0, "3.0"

    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    const-string v0, "MTK_vCard"

    const-string v2, "Unknown vCard version detected."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_2
    const-string v0, "2.1"

    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2243
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    if-nez v0, :cond_1

    .line 2244
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    .line 2245
    const-string v0, "X-CLASS"

    const-string v1, "PUBLIC"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    const-string v0, "X-REDUCTION"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    const-string v0, "X-NO"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    const-string v0, "X-DCM-HMN-MODE"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    :cond_0
    const-string v0, "END"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    .line 2253
    :cond_1
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
