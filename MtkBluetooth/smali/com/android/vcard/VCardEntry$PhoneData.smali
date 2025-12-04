.class public Lcom/android/vcard/VCardEntry$PhoneData;
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
    name = "PhoneData"
.end annotation


# instance fields
.field private mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mNumber:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    .line 329
    iput p2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    .line 330
    iput-object p3, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    .line 331
    iput-boolean p4, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    .line 332
    return-void
.end method

.method static synthetic access$1600(Lcom/android/vcard/VCardEntry$PhoneData;)Ljava/lang/String;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .line 337
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 338
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 339
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 340
    const-string p2, "mimetype"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 342
    iget p2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "data2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 343
    iget p2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    if-nez p2, :cond_0

    .line 344
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    const-string v1, "data3"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 346
    :cond_0
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 347
    iget-boolean p2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    if-eqz p2, :cond_1

    .line 348
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "is_primary"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 350
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 360
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 361
    return v0

    .line 363
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$PhoneData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 364
    return v2

    .line 366
    :cond_1
    check-cast p1, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 367
    iget v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    .line 368
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    .line 369
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    iget-boolean p1, p1, Lcom/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 367
    :goto_0
    return v0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .line 390
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 375
    iget v0, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    .line 376
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 377
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 378
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_2
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    .line 379
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 384
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    .line 385
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 384
    const-string v1, "type: %d, data: %s, label: %s, isPrimary: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
