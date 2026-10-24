.class public final Lcom/shabakaty/downloader/xx;
.super Ljava/lang/Object;
.source "CctTransportBackend.java"

# interfaces
.implements Lcom/shabakaty/downloader/nq4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/xx$a;,
        Lcom/shabakaty/downloader/xx$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ml0;

.field public final b:Landroid/net/ConnectivityManager;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/net/URL;

.field public final e:Lcom/shabakaty/downloader/y30;

.field public final f:Lcom/shabakaty/downloader/y30;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/y30;Lcom/shabakaty/downloader/y30;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/w92;

    invoke-direct {v0}, Lcom/shabakaty/downloader/w92;-><init>()V

    .line 3
    const-class v1, Lcom/shabakaty/downloader/ll;

    sget-object v2, Lcom/shabakaty/downloader/lf;->a:Lcom/shabakaty/downloader/lf;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/w92;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    .line 4
    const-class v1, Lcom/shabakaty/downloader/cg;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/w92;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    .line 5
    const-class v1, Lcom/shabakaty/downloader/ik2;

    sget-object v2, Lcom/shabakaty/downloader/of;->a:Lcom/shabakaty/downloader/of;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/w92;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    .line 6
    const-class v1, Lcom/shabakaty/downloader/nh;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/w92;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    .line 7
    const-class v1, Lcom/shabakaty/downloader/r30;

    sget-object v2, Lcom/shabakaty/downloader/mf;->a:Lcom/shabakaty/downloader/mf;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/w92;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    .line 8
    const-class v1, Lcom/shabakaty/downloader/eg;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/w92;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    .line 9
    const-class v1, Lcom/shabakaty/downloader/z6;

    sget-object v2, Lcom/shabakaty/downloader/kf;->a:Lcom/shabakaty/downloader/kf;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/w92;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    .line 10
    const-class v1, Lcom/shabakaty/downloader/ag;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/w92;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    .line 11
    const-class v1, Lcom/shabakaty/downloader/gk2;

    sget-object v2, Lcom/shabakaty/downloader/nf;->a:Lcom/shabakaty/downloader/nf;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/w92;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    .line 12
    const-class v1, Lcom/shabakaty/downloader/mh;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/w92;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    .line 13
    const-class v1, Lcom/shabakaty/downloader/fy2;

    sget-object v2, Lcom/shabakaty/downloader/pf;->a:Lcom/shabakaty/downloader/pf;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/w92;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    .line 14
    const-class v1, Lcom/shabakaty/downloader/ph;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/w92;->a(Ljava/lang/Class;Lcom/shabakaty/downloader/l43;)Lcom/shabakaty/downloader/m31;

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lcom/shabakaty/downloader/w92;->d:Z

    .line 16
    new-instance v1, Lcom/shabakaty/downloader/v92;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/v92;-><init>(Lcom/shabakaty/downloader/w92;)V

    .line 17
    iput-object v1, p0, Lcom/shabakaty/downloader/xx;->a:Lcom/shabakaty/downloader/ml0;

    .line 18
    iput-object p1, p0, Lcom/shabakaty/downloader/xx;->c:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/shabakaty/downloader/xx;->b:Landroid/net/ConnectivityManager;

    .line 20
    sget-object p1, Lcom/shabakaty/downloader/kp;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/shabakaty/downloader/xx;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xx;->d:Ljava/net/URL;

    .line 21
    iput-object p3, p0, Lcom/shabakaty/downloader/xx;->e:Lcom/shabakaty/downloader/y30;

    .line 22
    iput-object p2, p0, Lcom/shabakaty/downloader/xx;->f:Lcom/shabakaty/downloader/y30;

    const p1, 0x9c40

    .line 23
    iput p1, p0, Lcom/shabakaty/downloader/xx;->g:I

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid url: "

    invoke-static {v2, p0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/n51;)Lcom/shabakaty/downloader/n51;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xx;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51;->i()Lcom/shabakaty/downloader/n51$a;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sdk-version"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "model"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "hardware"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "device"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "product"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "os-uild"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "manufacturer"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "fingerprint"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 19
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 21
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tz-offset"

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 22
    sget-object v2, Lcom/shabakaty/downloader/fy2$b;->s:Lcom/shabakaty/downloader/fy2$b;

    const/4 v2, -0x1

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "net-type"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 25
    sget-object v0, Lcom/shabakaty/downloader/fy2$a;->s:Lcom/shabakaty/downloader/fy2$a;

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 27
    sget-object v0, Lcom/shabakaty/downloader/fy2$a;->t:Lcom/shabakaty/downloader/fy2$a;

    const/16 v0, 0x64

    goto :goto_2

    .line 28
    :cond_2
    sget-object v3, Lcom/shabakaty/downloader/fy2$a;->u:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/fy2$a;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 29
    :goto_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "mobile-subtype"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v3

    const-string v4, "country"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v3

    const-string v4, "locale"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/shabakaty/downloader/xx;->c:Landroid/content/Context;

    const-string v3, "phone"

    .line 35
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 36
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v3

    const-string v4, "mcc_mnc"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/shabakaty/downloader/xx;->c:Landroid/content/Context;

    .line 39
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "CctTransportBackend"

    const-string v3, "Unable to find version code for package"

    .line 41
    invoke-static {v2, v3, v0}, Lcom/shabakaty/downloader/fl3;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->c()Ljava/util/Map;

    move-result-object v1

    const-string v2, "application_build"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n51$a;->b()Lcom/shabakaty/downloader/n51;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/hi;)Lcom/google/android/datatransport/runtime/backends/b;
    .locals 34

    move-object/from16 v1, p0

    .line 1
    sget-object v2, Lcom/google/android/datatransport/runtime/backends/b$a;->s:Lcom/google/android/datatransport/runtime/backends/b$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    move-object/from16 v3, p1

    check-cast v3, Lcom/shabakaty/downloader/bg;

    .line 3
    iget-object v4, v3, Lcom/shabakaty/downloader/bg;->a:Ljava/lang/Iterable;

    .line 4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/n51;

    .line 5
    invoke-virtual {v5}, Lcom/shabakaty/downloader/n51;->g()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "CctTransportBackend"

    const/4 v7, 0x0

    if-eqz v5, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/n51;

    .line 14
    sget-object v18, Lcom/shabakaty/downloader/bk3;->r:Lcom/shabakaty/downloader/bk3;

    .line 15
    iget-object v9, v1, Lcom/shabakaty/downloader/xx;->f:Lcom/shabakaty/downloader/y30;

    .line 16
    invoke-interface {v9}, Lcom/shabakaty/downloader/y30;->a()J

    move-result-wide v9

    .line 17
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 18
    iget-object v10, v1, Lcom/shabakaty/downloader/xx;->e:Lcom/shabakaty/downloader/y30;

    .line 19
    invoke-interface {v10}, Lcom/shabakaty/downloader/y30;->a()J

    move-result-wide v10

    .line 20
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 21
    sget-object v11, Lcom/shabakaty/downloader/r30$a;->r:Lcom/shabakaty/downloader/r30$a;

    const-string v12, "sdk-version"

    .line 22
    invoke-virtual {v8, v12}, Lcom/shabakaty/downloader/n51;->f(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v12, "model"

    .line 23
    invoke-virtual {v8, v12}, Lcom/shabakaty/downloader/n51;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v12, "hardware"

    .line 24
    invoke-virtual {v8, v12}, Lcom/shabakaty/downloader/n51;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v12, "device"

    .line 25
    invoke-virtual {v8, v12}, Lcom/shabakaty/downloader/n51;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v12, "product"

    .line 26
    invoke-virtual {v8, v12}, Lcom/shabakaty/downloader/n51;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v12, "os-uild"

    .line 27
    invoke-virtual {v8, v12}, Lcom/shabakaty/downloader/n51;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v12, "manufacturer"

    .line 28
    invoke-virtual {v8, v12}, Lcom/shabakaty/downloader/n51;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v12, "fingerprint"

    .line 29
    invoke-virtual {v8, v12}, Lcom/shabakaty/downloader/n51;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v12, "country"

    .line 30
    invoke-virtual {v8, v12}, Lcom/shabakaty/downloader/n51;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v12, "locale"

    .line 31
    invoke-virtual {v8, v12}, Lcom/shabakaty/downloader/n51;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v12, "mcc_mnc"

    .line 32
    invoke-virtual {v8, v12}, Lcom/shabakaty/downloader/n51;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v12, "application_build"

    .line 33
    invoke-virtual {v8, v12}, Lcom/shabakaty/downloader/n51;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 34
    new-instance v8, Lcom/shabakaty/downloader/ag;

    const/16 v32, 0x0

    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v32}, Lcom/shabakaty/downloader/ag;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ag$a;)V

    .line 35
    new-instance v14, Lcom/shabakaty/downloader/eg;

    invoke-direct {v14, v11, v8, v7}, Lcom/shabakaty/downloader/eg;-><init>(Lcom/shabakaty/downloader/r30$a;Lcom/shabakaty/downloader/z6;Lcom/shabakaty/downloader/eg$a;)V

    .line 36
    :try_start_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 37
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v7

    move-object v15, v8

    goto :goto_2

    .line 38
    :catch_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v15, v7

    move-object/from16 v16, v8

    .line 39
    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v11, "Missing required properties:"

    const-string v12, ""

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/n51;

    .line 41
    invoke-virtual {v8}, Lcom/shabakaty/downloader/n51;->d()Lcom/shabakaty/downloader/h31;

    move-result-object v13

    move-object/from16 v20, v0

    .line 42
    iget-object v0, v13, Lcom/shabakaty/downloader/h31;->a:Lcom/shabakaty/downloader/o31;

    move-object/from16 v17, v5

    .line 43
    new-instance v5, Lcom/shabakaty/downloader/o31;

    move-object/from16 v19, v12

    const-string v12, "proto"

    invoke-direct {v5, v12}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/o31;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 45
    iget-object v0, v13, Lcom/shabakaty/downloader/h31;->b:[B

    .line 46
    new-instance v5, Lcom/shabakaty/downloader/mh$b;

    invoke-direct {v5}, Lcom/shabakaty/downloader/mh$b;-><init>()V

    .line 47
    iput-object v0, v5, Lcom/shabakaty/downloader/mh$b;->d:[B

    goto :goto_4

    .line 48
    :cond_2
    new-instance v5, Lcom/shabakaty/downloader/o31;

    const-string v12, "json"

    invoke-direct {v5, v12}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/o31;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 50
    new-instance v0, Ljava/lang/String;

    .line 51
    iget-object v5, v13, Lcom/shabakaty/downloader/h31;->b:[B

    const-string v12, "UTF-8"

    .line 52
    invoke-static {v12}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-direct {v0, v5, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 53
    new-instance v5, Lcom/shabakaty/downloader/mh$b;

    invoke-direct {v5}, Lcom/shabakaty/downloader/mh$b;-><init>()V

    .line 54
    iput-object v0, v5, Lcom/shabakaty/downloader/mh$b;->e:Ljava/lang/String;

    .line 55
    :goto_4
    invoke-virtual {v8}, Lcom/shabakaty/downloader/n51;->e()J

    move-result-wide v12

    .line 56
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lcom/shabakaty/downloader/mh$b;->a:Ljava/lang/Long;

    .line 57
    invoke-virtual {v8}, Lcom/shabakaty/downloader/n51;->h()J

    move-result-wide v12

    .line 58
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lcom/shabakaty/downloader/mh$b;->c:Ljava/lang/Long;

    .line 59
    invoke-virtual {v8}, Lcom/shabakaty/downloader/n51;->b()Ljava/util/Map;

    move-result-object v0

    const-string v12, "tz-offset"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    const-wide/16 v12, 0x0

    goto :goto_5

    .line 60
    :cond_3
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 61
    :goto_5
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lcom/shabakaty/downloader/mh$b;->f:Ljava/lang/Long;

    const-string v0, "net-type"

    .line 62
    invoke-virtual {v8, v0}, Lcom/shabakaty/downloader/n51;->f(Ljava/lang/String;)I

    move-result v0

    .line 63
    sget-object v12, Lcom/shabakaty/downloader/fy2$b;->t:Landroid/util/SparseArray;

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fy2$b;

    const-string v12, "mobile-subtype"

    .line 64
    invoke-virtual {v8, v12}, Lcom/shabakaty/downloader/n51;->f(Ljava/lang/String;)I

    move-result v12

    .line 65
    sget-object v13, Lcom/shabakaty/downloader/fy2$a;->u:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/fy2$a;

    .line 66
    new-instance v13, Lcom/shabakaty/downloader/ph;

    move-object/from16 v21, v2

    const/4 v2, 0x0

    invoke-direct {v13, v0, v12, v2}, Lcom/shabakaty/downloader/ph;-><init>(Lcom/shabakaty/downloader/fy2$b;Lcom/shabakaty/downloader/fy2$a;Lcom/shabakaty/downloader/ph$a;)V

    .line 67
    iput-object v13, v5, Lcom/shabakaty/downloader/mh$b;->g:Lcom/shabakaty/downloader/fy2;

    .line 68
    invoke-virtual {v8}, Lcom/shabakaty/downloader/n51;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 69
    invoke-virtual {v8}, Lcom/shabakaty/downloader/n51;->c()Ljava/lang/Integer;

    move-result-object v0

    .line 70
    iput-object v0, v5, Lcom/shabakaty/downloader/mh$b;->b:Ljava/lang/Integer;

    .line 71
    :cond_4
    iget-object v0, v5, Lcom/shabakaty/downloader/mh$b;->a:Ljava/lang/Long;

    if-nez v0, :cond_5

    const-string v12, " eventTimeMs"

    goto :goto_6

    :cond_5
    move-object/from16 v12, v19

    .line 72
    :goto_6
    iget-object v0, v5, Lcom/shabakaty/downloader/mh$b;->c:Ljava/lang/Long;

    if-nez v0, :cond_6

    const-string v0, " eventUptimeMs"

    .line 73
    invoke-static {v12, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 74
    :cond_6
    iget-object v0, v5, Lcom/shabakaty/downloader/mh$b;->f:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-string v0, " timezoneOffsetSeconds"

    .line 75
    invoke-static {v12, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 76
    :cond_7
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 77
    new-instance v0, Lcom/shabakaty/downloader/mh;

    iget-object v2, v5, Lcom/shabakaty/downloader/mh$b;->a:Ljava/lang/Long;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    iget-object v2, v5, Lcom/shabakaty/downloader/mh$b;->b:Ljava/lang/Integer;

    iget-object v8, v5, Lcom/shabakaty/downloader/mh$b;->c:Ljava/lang/Long;

    .line 79
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    iget-object v8, v5, Lcom/shabakaty/downloader/mh$b;->d:[B

    iget-object v11, v5, Lcom/shabakaty/downloader/mh$b;->e:Ljava/lang/String;

    iget-object v12, v5, Lcom/shabakaty/downloader/mh$b;->f:Ljava/lang/Long;

    .line 80
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    iget-object v5, v5, Lcom/shabakaty/downloader/mh$b;->g:Lcom/shabakaty/downloader/fy2;

    const/16 v33, 0x0

    move-object/from16 v22, v0

    move-object/from16 v25, v2

    move-object/from16 v28, v8

    move-object/from16 v29, v11

    move-object/from16 v32, v5

    invoke-direct/range {v22 .. v33}, Lcom/shabakaty/downloader/mh;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLcom/shabakaty/downloader/fy2;Lcom/shabakaty/downloader/mh$a;)V

    .line 81
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 82
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v11, v12}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object/from16 v21, v2

    .line 83
    invoke-static {v6}, Lcom/shabakaty/downloader/fl3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v5, v8

    const-string v0, "Received event of unsupported encoding %s. Skipping..."

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move-object/from16 v5, v17

    move-object/from16 v0, v20

    move-object/from16 v2, v21

    goto/16 :goto_3

    :cond_a
    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v19, v12

    if-nez v9, :cond_b

    const-string v12, " requestTimeMs"

    goto :goto_8

    :cond_b
    move-object/from16 v12, v19

    :goto_8
    if-nez v10, :cond_c

    const-string v0, " requestUptimeMs"

    .line 84
    invoke-static {v12, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 85
    :cond_c
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 86
    new-instance v0, Lcom/shabakaty/downloader/nh;

    .line 87
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 88
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/16 v19, 0x0

    move-object v9, v0

    move-wide v10, v5

    move-object/from16 v17, v7

    invoke-direct/range {v9 .. v19}, Lcom/shabakaty/downloader/nh;-><init>(JJLcom/shabakaty/downloader/r30;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/shabakaty/downloader/bk3;Lcom/shabakaty/downloader/nh$a;)V

    .line 89
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 90
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v11, v12}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object/from16 v21, v2

    .line 91
    new-instance v0, Lcom/shabakaty/downloader/cg;

    invoke-direct {v0, v4}, Lcom/shabakaty/downloader/cg;-><init>(Ljava/util/List;)V

    .line 92
    iget-object v2, v1, Lcom/shabakaty/downloader/xx;->d:Ljava/net/URL;

    .line 93
    iget-object v3, v3, Lcom/shabakaty/downloader/bg;->b:[B

    if-eqz v3, :cond_10

    .line 94
    :try_start_1
    move-object/from16 v3, p1

    check-cast v3, Lcom/shabakaty/downloader/bg;

    .line 95
    iget-object v3, v3, Lcom/shabakaty/downloader/bg;->b:[B

    .line 96
    invoke-static {v3}, Lcom/shabakaty/downloader/kp;->a([B)Lcom/shabakaty/downloader/kp;

    move-result-object v3

    .line 97
    iget-object v4, v3, Lcom/shabakaty/downloader/kp;->b:Ljava/lang/String;

    if-eqz v4, :cond_f

    goto :goto_9

    :cond_f
    move-object v4, v7

    .line 98
    :goto_9
    iget-object v3, v3, Lcom/shabakaty/downloader/kp;->a:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 99
    invoke-static {v3}, Lcom/shabakaty/downloader/xx;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    .line 100
    :catch_1
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/b;->a()Lcom/google/android/datatransport/runtime/backends/b;

    move-result-object v0

    return-object v0

    :cond_10
    move-object v4, v7

    :cond_11
    :goto_a
    const/4 v3, 0x5

    const-wide/16 v8, -0x1

    .line 101
    :try_start_2
    new-instance v5, Lcom/shabakaty/downloader/xx$a;

    invoke-direct {v5, v2, v0, v4}, Lcom/shabakaty/downloader/xx$a;-><init>(Ljava/net/URL;Lcom/shabakaty/downloader/ll;Ljava/lang/String;)V

    new-instance v0, Lcom/shabakaty/downloader/cu;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/xx;)V

    .line 102
    :cond_12
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/cu;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 103
    move-object v4, v2

    check-cast v4, Lcom/shabakaty/downloader/xx$b;

    .line 104
    iget-object v10, v4, Lcom/shabakaty/downloader/xx$b;->b:Ljava/net/URL;

    if-eqz v10, :cond_13

    const-string v11, "Following redirect to: %s"

    .line 105
    invoke-static {v6, v11, v10}, Lcom/shabakaty/downloader/fl3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    iget-object v4, v4, Lcom/shabakaty/downloader/xx$b;->b:Ljava/net/URL;

    .line 107
    new-instance v10, Lcom/shabakaty/downloader/xx$a;

    iget-object v11, v5, Lcom/shabakaty/downloader/xx$a;->b:Lcom/shabakaty/downloader/ll;

    iget-object v5, v5, Lcom/shabakaty/downloader/xx$a;->c:Ljava/lang/String;

    invoke-direct {v10, v4, v11, v5}, Lcom/shabakaty/downloader/xx$a;-><init>(Ljava/net/URL;Lcom/shabakaty/downloader/ll;Ljava/lang/String;)V

    move-object v5, v10

    goto :goto_b

    :cond_13
    move-object v5, v7

    :goto_b
    if-eqz v5, :cond_14

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_12

    .line 108
    :cond_14
    check-cast v2, Lcom/shabakaty/downloader/xx$b;

    .line 109
    iget v0, v2, Lcom/shabakaty/downloader/xx$b;->a:I

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_15

    .line 110
    iget-wide v2, v2, Lcom/shabakaty/downloader/xx$b;->c:J

    .line 111
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/a;

    sget-object v4, Lcom/google/android/datatransport/runtime/backends/b$a;->r:Lcom/google/android/datatransport/runtime/backends/b$a;

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/datatransport/runtime/backends/a;-><init>(Lcom/google/android/datatransport/runtime/backends/b$a;J)V

    return-object v0

    :cond_15
    const/16 v2, 0x1f4

    if-ge v0, v2, :cond_17

    const/16 v2, 0x194

    if-ne v0, v2, :cond_16

    goto :goto_c

    .line 112
    :cond_16
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/b;->a()Lcom/google/android/datatransport/runtime/backends/b;

    move-result-object v0

    return-object v0

    .line 113
    :cond_17
    :goto_c
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v2, v21

    :try_start_3
    invoke-direct {v0, v2, v8, v9}, Lcom/google/android/datatransport/runtime/backends/a;-><init>(Lcom/google/android/datatransport/runtime/backends/b$a;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    move-object/from16 v2, v21

    :goto_d
    const-string v3, "Could not make request to the backend"

    .line 114
    invoke-static {v6, v3, v0}, Lcom/shabakaty/downloader/fl3;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/a;

    invoke-direct {v0, v2, v8, v9}, Lcom/google/android/datatransport/runtime/backends/a;-><init>(Lcom/google/android/datatransport/runtime/backends/b$a;J)V

    return-object v0
.end method
