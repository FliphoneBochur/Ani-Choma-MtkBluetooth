.class public Lcom/android/vcard/VCardEntry$PostalData;
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
    name = "PostalData"
.end annotation


# static fields
.field private static final ADDR_MAX_DATA_SIZE:I = 0x7


# instance fields
.field private final mCountry:Ljava/lang/String;

.field private final mExtendedAddress:Ljava/lang/String;

.field private mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mLocalty:Ljava/lang/String;

.field private final mPobox:Ljava/lang/String;

.field private final mPostalCode:Ljava/lang/String;

.field private final mRegion:Ljava/lang/String;

.field private final mStreet:Ljava/lang/String;

.field private final mType:I

.field private mVCardType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput p8, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    .line 523
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    .line 524
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    .line 525
    iput-object p3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    .line 526
    iput-object p4, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    .line 527
    iput-object p5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    .line 528
    iput-object p6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    .line 529
    iput-object p7, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    .line 530
    iput-object p9, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    .line 531
    iput-boolean p10, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    .line 532
    iput p11, p0, Lcom/android/vcard/VCardEntry$PostalData;->mVCardType:I

    .line 533
    return-void
.end method

.method public static constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/android/vcard/VCardEntry$PostalData;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/android/vcard/VCardEntry$PostalData;"
        }
    .end annotation

    .line 540
    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    .line 542
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    .line 543
    if-le v2, v0, :cond_0

    .line 544
    move v2, v0

    .line 552
    :cond_0
    nop

    .line 553
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 554
    aput-object v6, v1, v5

    .line 555
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v2, :cond_1

    .line 556
    goto :goto_1

    .line 558
    :cond_1
    goto :goto_0

    .line 559
    :cond_2
    :goto_1
    if-ge v5, v0, :cond_3

    .line 560
    add-int/lit8 v2, v5, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v5

    move v5, v2

    goto :goto_1

    .line 563
    :cond_3
    new-instance v0, Lcom/android/vcard/VCardEntry$PostalData;

    aget-object v7, v1, v4

    const/4 v2, 0x1

    aget-object v8, v1, v2

    const/4 v2, 0x2

    aget-object v9, v1, v2

    const/4 v2, 0x3

    aget-object v10, v1, v2

    const/4 v2, 0x4

    aget-object v11, v1, v2

    const/4 v2, 0x5

    aget-object v12, v1, v2

    const/4 v2, 0x6

    aget-object v13, v1, v2

    move-object v6, v0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    invoke-direct/range {v6 .. v17}, Lcom/android/vcard/VCardEntry$PostalData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    return-object v0
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

    .line 570
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 571
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 572
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 573
    const-string p2, "mimetype"

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 575
    iget p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "data2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 576
    iget p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    if-nez p2, :cond_0

    .line 577
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    const-string v1, "data3"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 594
    :cond_0
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    const-string v1, "data5"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 595
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    const-string v1, "data6"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 596
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    const-string v1, "data4"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 597
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    const-string v1, "data7"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 598
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    const-string v1, "data8"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 599
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    const-string v1, "data9"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 600
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    const-string v1, "data10"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 603
    iget-boolean p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-eqz p2, :cond_1

    .line 604
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "is_primary"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 606
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 658
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 659
    return v0

    .line 661
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$PostalData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 662
    return v2

    .line 664
    :cond_1
    check-cast p1, Lcom/android/vcard/VCardEntry$PostalData;

    .line 665
    iget v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    if-ne v1, v3, :cond_3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    .line 666
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    iget-boolean v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    .line 669
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    .line 670
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    .line 671
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    .line 672
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    .line 673
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    .line 674
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    .line 675
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 665
    :goto_0
    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .line 702
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getExtendedAddress()Ljava/lang/String;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAddress(I)Ljava/lang/String;
    .locals 8

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    nop

    .line 612
    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    const/4 v6, 0x4

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    const/4 v6, 0x5

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    const/4 v6, 0x6

    aput-object v3, v2, v6

    .line 615
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result p1

    const/16 v3, 0x20

    if-eqz p1, :cond_2

    .line 617
    nop

    :goto_0
    if-ltz v6, :cond_5

    .line 618
    aget-object p1, v2, v6

    .line 619
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 620
    if-nez v5, :cond_0

    .line 621
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 623
    :cond_0
    move v5, v4

    .line 625
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 629
    :cond_2
    move p1, v4

    :goto_2
    if-ge p1, v1, :cond_5

    .line 630
    aget-object v6, v2, p1

    .line 631
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 632
    if-nez v5, :cond_3

    .line 633
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 635
    :cond_3
    move v5, v4

    .line 637
    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 642
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalty()Ljava/lang/String;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    return-object v0
.end method

.method public getPobox()Ljava/lang/String;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 734
    iget v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 680
    iget v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    .line 681
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 682
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    .line 684
    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 686
    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_3

    aget-object v5, v3, v4

    .line 687
    mul-int/lit8 v0, v0, 0x1f

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto :goto_3

    :cond_2
    move v5, v2

    :goto_3
    add-int/2addr v0, v5

    .line 686
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 689
    :cond_3
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    .line 648
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    .line 649
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    .line 650
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    .line 651
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    .line 652
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    .line 653
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 647
    :goto_0
    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 742
    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 694
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    .line 696
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 694
    const-string v1, "type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
