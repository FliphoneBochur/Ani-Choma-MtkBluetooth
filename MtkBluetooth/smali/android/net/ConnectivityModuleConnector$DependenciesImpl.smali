.class Landroid/net/ConnectivityModuleConnector$DependenciesImpl;
.super Ljava/lang/Object;
.source "ConnectivityModuleConnector.java"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$Dependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityModuleConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependenciesImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ConnectivityModuleConnector$1;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Landroid/net/ConnectivityModuleConnector$DependenciesImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .line 158
    new-instance v0, Landroid/content/Intent;

    .line 159
    if-eqz p4, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".InProcess"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 161
    :cond_0
    nop

    :goto_0
    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 163
    if-nez v1, :cond_1

    .line 164
    const/4 p1, 0x0

    return-object p1

    .line 166
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 170
    :try_start_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    nop

    .line 177
    if-eqz p4, :cond_2

    const/16 v2, 0x3e8

    goto :goto_1

    :cond_2
    const/16 v2, 0x431

    .line 178
    :goto_1
    if-ne p2, v2, :cond_4

    .line 182
    if-nez p4, :cond_3

    .line 183
    invoke-static {p1, v1, p3}, Landroid/net/ConnectivityModuleConnector;->access$100(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 186
    :cond_3
    return-object v0

    .line 179
    :cond_4
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid network stack UID: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :catch_0
    move-exception p1

    .line 172
    new-instance p2, Ljava/lang/SecurityException;

    const-string p3, "Could not check network stack UID; package not found."

    invoke-direct {p2, p3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
