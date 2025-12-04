.class public Lcom/android/vcard/VCardEntry$ImData;
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
    name = "ImData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mCustomProtocol:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mProtocol:I

.field private final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput p1, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    .line 896
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    .line 897
    iput p4, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    .line 898
    iput-object p3, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    .line 899
    iput-boolean p5, p0, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    .line 900
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

    .line 905
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 906
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 907
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 908
    const-string p2, "mimetype"

    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 909
    iget p2, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "data2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 910
    iget p2, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "data5"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 911
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 912
    iget p2, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 913
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    const-string v1, "data6"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 915
    :cond_0
    iget-boolean p2, p0, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    if-eqz p2, :cond_1

    .line 916
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "is_primary"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 918
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 928
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 929
    return v0

    .line 931
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$ImData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 932
    return v2

    .line 934
    :cond_1
    check-cast p1, Lcom/android/vcard/VCardEntry$ImData;

    .line 935
    iget v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    .line 937
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    .line 938
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    iget-boolean p1, p1, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 935
    :goto_0
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomProtocol()Ljava/lang/String;
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .line 961
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .line 973
    iget v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 981
    iget v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 944
    iget v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    .line 945
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    add-int/2addr v0, v1

    .line 946
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 947
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 948
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_2
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    .line 949
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 985
    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 954
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    .line 955
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mProtocol:I

    .line 956
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$ImData;->mIsPrimary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 954
    const-string v1, "type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
