.class public Lcom/shabakaty/downloader/fq1;
.super Ljava/lang/Object;
.source "GlobalLibraryVersionRegistrar.java"

# interfaces
.implements Lcom/shabakaty/downloader/jm0;
.implements Lcom/shabakaty/downloader/o04;
.implements Lcom/shabakaty/downloader/dl0;
.implements Lcom/shabakaty/downloader/tq3;
.implements Lcom/shabakaty/downloader/ei5;
.implements Lcom/shabakaty/downloader/bc5;
.implements Lcom/shabakaty/downloader/ce5;
.implements Lcom/shabakaty/downloader/gi5;
.implements Lcom/shabakaty/downloader/bs5;
.implements Lcom/shabakaty/downloader/ql6;
.implements Lcom/shabakaty/downloader/v35;
.implements Lcom/shabakaty/downloader/q6;
.implements Lcom/shabakaty/downloader/vn;
.implements Lcom/shabakaty/downloader/p6;
.implements Lcom/shabakaty/downloader/td0;
.implements Lcom/shabakaty/downloader/k63;
.implements Lcom/shabakaty/downloader/a95;


# static fields
.field public static volatile t:Lcom/shabakaty/downloader/fq1;


# instance fields
.field public final synthetic r:I

.field public s:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/dh2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/shabakaty/downloader/fq1;->r:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x13

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void

    .line 29
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance p1, Lcom/shabakaty/downloader/w11;

    invoke-direct {p1}, Lcom/shabakaty/downloader/w11;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void

    .line 31
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 32
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 33
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance p1, Lcom/shabakaty/downloader/xk4;

    invoke-direct {p1}, Lcom/shabakaty/downloader/xk4;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void

    .line 35
    :cond_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/yr1;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void

    .line 37
    :cond_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    iput p2, p0, Lcom/shabakaty/downloader/fq1;->r:I

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance p2, Lcom/shabakaty/downloader/dm0;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/dm0;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void

    .line 42
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    :try_start_0
    sget-boolean v0, Lcom/shabakaty/downloader/uq1;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x3

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_1

    move-object p1, p2

    goto :goto_1

    :cond_1
    :try_start_2
    const-string v0, "google_ads_flags"

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v0, "GmscoreFlag"

    const-string v1, "Error while getting SharedPreferences "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p2, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/cr3;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fj5;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 12
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/fl6;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fp5;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 15
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/hn5;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/i07;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 16
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/i75$a;)V
    .locals 1

    const/16 v0, 0x19

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/in5;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 14
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ka5;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/l6;)V
    .locals 1

    const/16 v0, 0x16

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/nq1;)V
    .locals 1

    const/16 v0, 0x18

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/qm3;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/rf5;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/uk6;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vh5;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/zl2;)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    const/16 v0, 0x1b

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lcom/shabakaty/downloader/o04;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    return-void
.end method

.method public static d1(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "name"

    .line 5
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "parameters"

    .line 6
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_2

    const-string p0, "true"

    return-object p0

    :cond_2
    const-string p0, "false"

    return-object p0

    .line 5
    :cond_3
    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 6
    check-cast p0, Ljava/lang/Throwable;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/fq1;->l1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lcom/shabakaty/downloader/fq1;->l1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p3}, Lcom/shabakaty/downloader/fq1;->l1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    .line 7
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v2, ", "

    if-nez p0, :cond_2

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 10
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move-object v2, v0

    .line 13
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B([I)V
    .locals 0

    return-void
.end method

.method public B1()Lcom/shabakaty/downloader/k06;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fj5;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/fj5;->i:Lcom/shabakaty/downloader/k06;

    invoke-static {v1}, Lcom/shabakaty/downloader/fj5;->a(Lcom/shabakaty/downloader/qi5;)V

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/fj5;->i:Lcom/shabakaty/downloader/k06;

    return-object v0
.end method

.method public D(JJ)J
    .locals 0

    return-wide p3
.end method

.method public D1()Lcom/shabakaty/downloader/ww5;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fj5;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/fj5;->j:Lcom/shabakaty/downloader/ww5;

    invoke-static {v1}, Lcom/shabakaty/downloader/fj5;->a(Lcom/shabakaty/downloader/qi5;)V

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/fj5;->j:Lcom/shabakaty/downloader/ww5;

    return-object v0
.end method

.method public E1(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/fq1;->j1(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public F1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/fq1;->j1(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public G0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public G1(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/fq1;->j1(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public H1(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/fq1;->j1(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public I0()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public I1(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/fq1;->j1(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public J(Ljava/lang/String;Lcom/shabakaty/downloader/si;IILjava/util/Map;)Lcom/shabakaty/downloader/jm;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/si;",
            "II",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/f31;",
            "*>;)",
            "Lcom/shabakaty/downloader/jm;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/si;->B:Lcom/shabakaty/downloader/si;

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/w11;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/si;->x:Lcom/shabakaty/downloader/si;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/w11;->J(Ljava/lang/String;Lcom/shabakaty/downloader/si;IILjava/util/Map;)Lcom/shabakaty/downloader/jm;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode UPC-A, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J1(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/fq1;->j1(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public K(JJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public L(Lcom/shabakaty/downloader/ky0;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    .line 2
    iget v2, p1, Lcom/shabakaty/downloader/ky0;->a:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "url"

    .line 4
    iget-object v2, p1, Lcom/shabakaty/downloader/ky0;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "etag"

    .line 6
    iget-object v2, p1, Lcom/shabakaty/downloader/ky0;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dir_path"

    .line 8
    iget-object v2, p1, Lcom/shabakaty/downloader/ky0;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file_name"

    .line 10
    iget-object v2, p1, Lcom/shabakaty/downloader/ky0;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "total_bytes"

    .line 12
    iget-wide v2, p1, Lcom/shabakaty/downloader/ky0;->f:J

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "downloaded_bytes"

    .line 14
    iget-wide v2, p1, Lcom/shabakaty/downloader/ky0;->g:J

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_modified_at"

    .line 16
    iget-wide v2, p1, Lcom/shabakaty/downloader/ky0;->h:J

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "prdownloader"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public M(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/nq1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    const-class v0, Ljava/io/IOException;

    .line 2
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/uk4;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    if-eqz p1, :cond_4

    const-string v1, "registration_id"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "unregistered"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    return-object v1

    :cond_1
    const-string v1, "error"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RST"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    .line 7
    new-instance p1, Ljava/io/IOException;

    .line 8
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x15

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected response: "

    invoke-static {v2, v1, p1}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "FirebaseMessaging"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Ljava/io/IOException;

    .line 10
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "INSTANCE_ID_RESET"

    .line 12
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 14
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O(JJ)J
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public O0(J)J
    .locals 0

    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public P0(JJ)J
    .locals 0

    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public Q0()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public R0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/un;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$A$:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/fq1;->d1(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/un;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    const-string p2, "FirebaseCrashlytics"

    const-string v0, "Unable to serialize Firebase Analytics event to breadcrumb."

    .line 4
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public S(J)Lcom/shabakaty/downloader/qm3;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/qm3;

    return-object p1
.end method

.method public S0(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    return v0

    :cond_0
    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v1, "GmscoreFlag"

    const-string v2, "Error while reading from SharedPreferences "

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public U0()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fj5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fj5;->a:Landroid/content/Context;

    return-object v0
.end method

.method public V(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/in5;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/in5;->S1()V

    return-void
.end method

.method public W0()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/dh2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Y(Lcom/shabakaty/downloader/un;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    const/4 p1, 0x3

    const-string v0, "FirebaseCrashlytics"

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v1, "Registered Firebase Analytics event receiver for breadcrumbs"

    .line 3
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public Y0(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/w24;
    .locals 2

    const-string v0, "settings_version"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/kd;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/kd;-><init>(I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/wt2;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wt2;-><init>(I)V

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/zl2;

    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/a34;->a(Lcom/shabakaty/downloader/zl2;Lorg/json/JSONObject;)Lcom/shabakaty/downloader/w24;

    move-result-object p1

    return-object p1
.end method

.method public Z(IJJ)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "downloaded_bytes"

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "last_modified_at"

    .line 3
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast p2, Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "prdownloader"

    const-string p4, "id = ? "

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p5, v1

    .line 6
    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fl6;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/fl6;->a:Landroid/content/ContentResolver;

    iget-object v2, v0, Lcom/shabakaty/downloader/fl6;->b:Landroid/net/Uri;

    sget-object v3, Lcom/shabakaty/downloader/fl6;->h:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_1

    :cond_1
    const/16 v2, 0x100

    if-gt v1, v2, :cond_2

    .line 7
    :try_start_1
    new-instance v2, Lcom/shabakaty/downloader/ad;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/ad;-><init>(I)V

    goto :goto_0

    .line 8
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    invoke-direct {v2, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 10
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    :goto_1
    return-object v0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 13
    throw v1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/cr3;

    sget v1, Lcom/shabakaty/downloader/cr3;->f:I

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, [Lcom/shabakaty/downloader/o04;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1

    aget-object v9, v0, v4

    .line 2
    invoke-interface {v9}, Lcom/shabakaty/downloader/o04;->c()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_0

    .line 3
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    move-wide v5, v7

    :cond_2
    return-wide v5
.end method

.method public c0([I)V
    .locals 0

    return-void
.end method

.method public d(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public e(J)Z
    .locals 18

    move-wide/from16 v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/fq1;->c()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    move-object/from16 v8, p0

    goto :goto_2

    :cond_1
    move-object/from16 v8, p0

    .line 2
    iget-object v9, v8, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v9, [Lcom/shabakaty/downloader/o04;

    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v10, :cond_5

    aget-object v13, v9, v11

    .line 3
    invoke-interface {v13}, Lcom/shabakaty/downloader/o04;->c()J

    move-result-wide v14

    cmp-long v16, v14, v6

    if-eqz v16, :cond_2

    cmp-long v16, v14, v0

    if-gtz v16, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    :goto_1
    cmp-long v17, v14, v4

    if-eqz v17, :cond_3

    if-eqz v16, :cond_4

    .line 4
    :cond_3
    invoke-interface {v13, v0, v1}, Lcom/shabakaty/downloader/o04;->e(J)Z

    move-result v13

    or-int/2addr v12, v13

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    or-int/2addr v3, v12

    if-nez v12, :cond_0

    :goto_2
    return v3
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/cr3;

    sget v1, Lcom/shabakaty/downloader/cr3;->f:I

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/xk4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk4;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public find(I)Lcom/shabakaty/downloader/ky0;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM prdownloader WHERE id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/ky0;

    invoke-direct {v2}, Lcom/shabakaty/downloader/ky0;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    iput p1, v2, Lcom/shabakaty/downloader/ky0;->a:I

    const-string p1, "url"

    .line 5
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    iput-object p1, v2, Lcom/shabakaty/downloader/ky0;->b:Ljava/lang/String;

    const-string p1, "etag"

    .line 7
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    iput-object p1, v2, Lcom/shabakaty/downloader/ky0;->c:Ljava/lang/String;

    const-string p1, "dir_path"

    .line 9
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    iput-object p1, v2, Lcom/shabakaty/downloader/ky0;->d:Ljava/lang/String;

    const-string p1, "file_name"

    .line 11
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    iput-object p1, v2, Lcom/shabakaty/downloader/ky0;->e:Ljava/lang/String;

    const-string p1, "total_bytes"

    .line 13
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 14
    iput-wide v3, v2, Lcom/shabakaty/downloader/ky0;->f:J

    const-string p1, "downloaded_bytes"

    .line 15
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 16
    iput-wide v3, v2, Lcom/shabakaty/downloader/ky0;->g:J

    const-string p1, "last_modified_at"

    .line 17
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 18
    iput-wide v3, v2, Lcom/shabakaty/downloader/ky0;->h:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v2, v0

    :goto_0
    move-object v0, v1

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    .line 19
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v2, v0

    .line 20
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 21
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_3
    return-object v0

    :goto_4
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 22
    :cond_3
    throw p1
.end method

.method public g()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/rf5;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/rf5;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v0, Lcom/shabakaty/downloader/rf5;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/gg7;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g1(Ljava/lang/Exception;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/xk4;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-boolean v2, v0, Lcom/shabakaty/downloader/xk4;->b:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v1

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v4, v0, Lcom/shabakaty/downloader/xk4;->b:Z

    .line 6
    iput-object p1, v0, Lcom/shabakaty/downloader/xk4;->e:Ljava/lang/Exception;

    .line 7
    iput-boolean v3, v0, Lcom/shabakaty/downloader/xk4;->f:Z

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/xk4;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk4;->e()V

    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the error on a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public h1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/xk4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xk4;->g(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the result of a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ka5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka5;->f()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, [Lcom/shabakaty/downloader/o04;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-interface {v4}, Lcom/shabakaty/downloader/o04;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public j1(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fj5;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fj5;->e:Lcom/shabakaty/downloader/wv5;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_a

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/ns5;->b:Lcom/shabakaty/downloader/ox5;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 5
    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-static {p2, p3, p4, p5}, Lcom/shabakaty/downloader/fq1;->n1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {p1, v2, v3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x5

    if-lt p1, v2, :cond_9

    .line 9
    monitor-enter v0

    :try_start_0
    const-string v2, "null reference"

    .line 10
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    const/16 v3, 0x9

    if-lt p1, v3, :cond_3

    const/16 p1, 0x8

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fq1;->w1()Lcom/shabakaty/downloader/sq5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/sq5;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x43

    goto :goto_1

    :cond_4
    const/16 v3, 0x63

    :goto_1
    const-string v4, "01VDIWEA?"

    .line 12
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    sget-object v4, Lcom/shabakaty/downloader/xi5;->a:Ljava/lang/String;

    .line 13
    invoke-static {p3}, Lcom/shabakaty/downloader/wv5;->P1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Lcom/shabakaty/downloader/wv5;->P1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p5}, Lcom/shabakaty/downloader/wv5;->P1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p3, p4, p5}, Lcom/shabakaty/downloader/fq1;->n1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p3, p4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "3"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x400

    if-le p2, p3, :cond_5

    .line 15
    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 16
    :cond_5
    iget-object p2, v0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/fj5;

    .line 17
    iget-object p3, p2, Lcom/shabakaty/downloader/fj5;->j:Lcom/shabakaty/downloader/ww5;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/shabakaty/downloader/qi5;->K1()Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_2

    .line 18
    :cond_6
    iget-object v1, p2, Lcom/shabakaty/downloader/fj5;->j:Lcom/shabakaty/downloader/ww5;

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 19
    iget-object p2, v1, Lcom/shabakaty/downloader/ww5;->y:Lcom/shabakaty/downloader/dx5;

    .line 20
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/dx5;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_8
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_9
    :goto_3
    return-void

    .line 22
    :cond_a
    sget-object v0, Lcom/shabakaty/downloader/ns5;->b:Lcom/shabakaty/downloader/ox5;

    .line 23
    iget-object v0, v0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 26
    invoke-static {p2, p3, p4, p5}, Lcom/shabakaty/downloader/fq1;->n1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public k1(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/fq1;->j1(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public l0([Lcom/shabakaty/downloader/sp2;)V
    .locals 0

    return-void
.end method

.method public m1(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/fq1;->j1(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public o()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, [Lcom/shabakaty/downloader/o04;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1

    aget-object v9, v0, v4

    .line 2
    invoke-interface {v9}, Lcom/shabakaty/downloader/o04;->o()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_0

    .line 3
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    move-wide v5, v7

    :cond_2
    return-wide v5
.end method

.method public o0(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fp5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fp5;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fp5;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/fp5;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fp5;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/fp5;->b:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public o1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/fq1;->j1(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onMetadataUpdated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/cr3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/cr3;->d:Lcom/shabakaty/downloader/cr3$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/cr3$b;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method public onStatusUpdated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/cr3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/cr3;->e:Lcom/shabakaty/downloader/cr3$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/cr3$c;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q0([I)V
    .locals 0

    return-void
.end method

.method public q1()Lcom/shabakaty/downloader/x30;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fj5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fj5;->c:Lcom/shabakaty/downloader/x30;

    return-object v0
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/vh5;

    check-cast p1, Lcom/shabakaty/downloader/cf7;

    check-cast p2, Lcom/shabakaty/downloader/zk4;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gf5;

    iget-object v0, v0, Lcom/shabakaty/downloader/vh5;->j:Lcom/shabakaty/downloader/hl5;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/gf5;->N1(Lcom/shabakaty/downloader/bg5;)V

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gf5;

    invoke-interface {p1}, Lcom/shabakaty/downloader/gf5;->N0()V

    .line 4
    iget-object p1, p2, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public r1()Lcom/shabakaty/downloader/wv5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fj5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM prdownloader WHERE id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/fq1;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/i07;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/i07;->size()I

    move-result v0

    return v0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/hn5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hn5;->size()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public t(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, [Lcom/shabakaty/downloader/o04;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3, p1, p2}, Lcom/shabakaty/downloader/o04;->t(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u0(JJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public v(Lcom/shabakaty/downloader/uk4;)V
    .locals 1

    iget p1, p0, Lcom/shabakaty/downloader/fq1;->r:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/i75$a;

    sget v0, Lcom/shabakaty/downloader/h75;->b:I

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/i75$a;->a()V

    return-void

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public v0(Lcom/google/android/gms/cast/MediaError;)V
    .locals 0

    return-void
.end method

.method public w([II)V
    .locals 0

    return-void
.end method

.method public w1()Lcom/shabakaty/downloader/sq5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fj5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fj5;->d:Lcom/shabakaty/downloader/sq5;

    return-object v0
.end method

.method public x(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/l6;

    const-string v1, "clx"

    invoke-interface {v0, v1, p1, p2}, Lcom/shabakaty/downloader/l6;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public x1()Lcom/shabakaty/downloader/xu6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fj5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fj5;->d()Lcom/shabakaty/downloader/xu6;

    move-result-object v0

    return-object v0
.end method

.method public z1()Lcom/shabakaty/downloader/tf5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fj5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fj5;->e()Lcom/shabakaty/downloader/tf5;

    move-result-object v0

    return-object v0
.end method
