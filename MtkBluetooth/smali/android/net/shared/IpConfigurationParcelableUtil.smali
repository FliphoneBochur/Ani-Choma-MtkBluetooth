.class public final Landroid/net/shared/IpConfigurationParcelableUtil;
.super Ljava/lang/Object;
.source "IpConfigurationParcelableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parcelAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 0

    .line 36
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unparcelAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 0

    .line 45
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method
