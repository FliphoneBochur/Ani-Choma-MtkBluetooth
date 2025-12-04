.class public Lcom/android/vcard/VCardEntry$SipData;
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
    name = "SipData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    .line 1369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1370
    const-string v0, "sip:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    goto :goto_0

    .line 1373
    :cond_0
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    .line 1375
    :goto_0
    iput p2, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    .line 1376
    iput-object p3, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    .line 1377
    iput-boolean p4, p0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    .line 1378
    return-void
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

    .line 1383
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1384
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1385
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1386
    const-string p2, "mimetype"

    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1387
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1388
    iget p2, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "data2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1389
    iget p2, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    if-nez p2, :cond_0

    .line 1390
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    const-string v1, "data3"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1392
    :cond_0
    iget-boolean p2, p0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-eqz p2, :cond_1

    .line 1393
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "is_primary"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1395
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1396
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1405
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1406
    return v0

    .line 1408
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$SipData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1409
    return v2

    .line 1411
    :cond_1
    check-cast p1, Lcom/android/vcard/VCardEntry$SipData;

    .line 1412
    iget v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    .line 1413
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    .line 1414
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    iget-boolean p1, p1, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1412
    :goto_0
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1440
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .line 1434
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1442
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1441
    iget v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1420
    iget v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    .line 1421
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 1422
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 1423
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_2
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    .line 1424
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1400
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
