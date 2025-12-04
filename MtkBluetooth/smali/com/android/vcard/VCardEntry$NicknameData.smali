.class public Lcom/android/vcard/VCardEntry$NicknameData;
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
    name = "NicknameData"
.end annotation


# instance fields
.field private final mNickname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1086
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NicknameData;->mNickname:Ljava/lang/String;

    .line 1087
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

    .line 1092
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1093
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1094
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1095
    const-string p2, "mimetype"

    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1096
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "data2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1097
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NicknameData;->mNickname:Ljava/lang/String;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1098
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1108
    instance-of v0, p1, Lcom/android/vcard/VCardEntry$NicknameData;

    if-nez v0, :cond_0

    .line 1109
    const/4 p1, 0x0

    return p1

    .line 1111
    :cond_0
    check-cast p1, Lcom/android/vcard/VCardEntry$NicknameData;

    .line 1112
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NicknameData;->mNickname:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/vcard/VCardEntry$NicknameData;->mNickname:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .line 1127
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1131
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NicknameData;->mNickname:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NicknameData;->mNickname:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1103
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NicknameData;->mNickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nickname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NicknameData;->mNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
