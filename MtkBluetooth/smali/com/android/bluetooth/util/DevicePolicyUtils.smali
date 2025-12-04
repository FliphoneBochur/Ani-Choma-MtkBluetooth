.class public final Lcom/android/bluetooth/util/DevicePolicyUtils;
.super Ljava/lang/Object;
.source "DevicePolicyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/android/bluetooth/util/DevicePolicyUtils;->isBluetoothWorkContactSharingDisabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 53
    :cond_0
    sget-object p0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    .line 52
    :goto_0
    return-object p0
.end method

.method private static isBluetoothWorkContactSharingDisabled(Landroid/content/Context;)Z
    .locals 4

    .line 31
    nop

    .line 32
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 33
    nop

    .line 34
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 35
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 36
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 40
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Landroid/os/UserHandle;

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    .line 46
    :cond_1
    const/4 p0, 0x1

    return p0
.end method
