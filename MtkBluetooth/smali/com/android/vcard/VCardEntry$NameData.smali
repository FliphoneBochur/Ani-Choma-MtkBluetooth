.class public Lcom/android/vcard/VCardEntry$NameData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameData"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field private mFamily:Ljava/lang/String;

.field private mFormatted:Ljava/lang/String;

.field private mGiven:Ljava/lang/String;

.field private mMiddle:Ljava/lang/String;

.field private mPhoneticFamily:Ljava/lang/String;

.field private mPhoneticGiven:Ljava/lang/String;

.field private mPhoneticMiddle:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;

.field private mSortString:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .line 177
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 178
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 179
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 180
    const-string p2, "mimetype"

    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 182
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 183
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    const-string v1, "data2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 185
    :cond_0
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 186
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    const-string v1, "data3"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 188
    :cond_1
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 189
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    const-string v1, "data5"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 191
    :cond_2
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 192
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    const-string v1, "data4"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 194
    :cond_3
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 195
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    const-string v1, "data6"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 198
    :cond_4
    const/4 p2, 0x0

    .line 200
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "data7"

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 201
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 202
    move p2, v3

    .line 204
    :cond_5
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 205
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    const-string v1, "data9"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 206
    move p2, v3

    .line 208
    :cond_6
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 209
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    const-string v1, "data8"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 210
    goto :goto_0

    .line 208
    :cond_7
    move v3, p2

    .line 215
    :goto_0
    if-nez v3, :cond_8

    .line 216
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 219
    :cond_8
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 220
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public emptyPhoneticStructuredName()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0
.end method

.method public emptyStructuredName()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 234
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 235
    return v0

    .line 237
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$NameData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 238
    return v2

    .line 240
    :cond_1
    check-cast p1, Lcom/android/vcard/VCardEntry$NameData;

    .line 242
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    .line 243
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    .line 244
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    .line 245
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    .line 246
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    .line 247
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    .line 248
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    .line 249
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    .line 250
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    .line 251
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 242
    :goto_0
    return v0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .line 274
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatted()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public getGiven()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddle()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSortString()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 256
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    .line 259
    nop

    .line 260
    move v2, v3

    move v4, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v5, v1, v2

    .line 261
    mul-int/lit8 v4, v4, 0x1f

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    add-int/2addr v4, v5

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_1
    return v4
.end method

.method public isEmpty()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0
.end method

.method public setFamily(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-void
.end method

.method public setGiven(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-void
.end method

.method public setMiddle(Ljava/lang/String;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 268
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "family: %s, given: %s, middle: %s, prefix: %s, suffix: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
