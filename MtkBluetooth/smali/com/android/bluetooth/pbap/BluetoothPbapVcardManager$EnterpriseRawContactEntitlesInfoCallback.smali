.class Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"

# interfaces
.implements Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnterpriseRawContactEntitlesInfoCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;)V
    .locals 0

    .line 734
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawContactEntitlesInfo(J)Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;
    .locals 4

    .line 738
    invoke-static {p1, p2}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    new-instance v0, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CORP_CONTENT_URI:Landroid/net/Uri;

    sget-wide v2, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    sub-long/2addr p1, v2

    invoke-direct {v0, v1, p1, p2}, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;-><init>(Landroid/net/Uri;J)V

    return-object v0

    .line 742
    :cond_0
    new-instance v0, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;-><init>(Landroid/net/Uri;J)V

    return-object v0
.end method
