.class public final Lcom/shabakaty/downloader/v71;
.super Ljava/lang/Object;
.source "ExoPlayerModule_ProvideCacheDataSinkFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/lk2;

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/o64;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lk2;Lcom/shabakaty/downloader/oj3;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/v71;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/v71;->b:Lcom/shabakaty/downloader/lk2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/v71;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/v71;->b:Lcom/shabakaty/downloader/lk2;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/v71;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 7
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/v71;->b:Lcom/shabakaty/downloader/lk2;

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/v71;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 10
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/v71;->b:Lcom/shabakaty/downloader/lk2;

    .line 12
    iput-object p2, p0, Lcom/shabakaty/downloader/v71;->c:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 13
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/shabakaty/downloader/v71;->b:Lcom/shabakaty/downloader/lk2;

    .line 15
    iput-object p2, p0, Lcom/shabakaty/downloader/v71;->c:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/shabakaty/downloader/v71;->a:I

    const-string v1, "context"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v71;->b:Lcom/shabakaty/downloader/lk2;

    iget-object v2, p0, Lcom/shabakaty/downloader/v71;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/to0;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/to0;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/v71;->b:Lcom/shabakaty/downloader/lk2;

    iget-object v2, p0, Lcom/shabakaty/downloader/v71;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/in0$a;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/in0$a;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/in0;

    iget-object v4, v0, Lcom/shabakaty/downloader/in0$a;->a:Landroid/content/Context;

    iget-object v5, v0, Lcom/shabakaty/downloader/in0$a;->b:Ljava/util/Map;

    iget v6, v0, Lcom/shabakaty/downloader/in0$a;->c:I

    iget-object v7, v0, Lcom/shabakaty/downloader/in0$a;->d:Lcom/shabakaty/downloader/w30;

    iget-boolean v8, v0, Lcom/shabakaty/downloader/in0$a;->e:Z

    move-object v3, v1

    .line 10
    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/in0;-><init>(Landroid/content/Context;Ljava/util/Map;ILcom/shabakaty/downloader/w30;Z)V

    return-object v1

    .line 11
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/v71;->b:Lcom/shabakaty/downloader/lk2;

    iget-object v2, p0, Lcom/shabakaty/downloader/v71;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/f71;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/f71;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 15
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/v71;->b:Lcom/shabakaty/downloader/lk2;

    iget-object v1, p0, Lcom/shabakaty/downloader/v71;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/o64;

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "simpleCache"

    .line 17
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/shabakaty/downloader/rp;

    const-wide/32 v2, 0x500000

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/rp;-><init>(Lcom/shabakaty/downloader/np;J)V

    return-object v0

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v71;->b:Lcom/shabakaty/downloader/lk2;

    iget-object v2, p0, Lcom/shabakaty/downloader/v71;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 23
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 25
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "?"

    .line 26
    :goto_1
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "com.cinemana.pro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (Linux;Android "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ExoPlayerLib/2.15.1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUserAgent(context, BuildConfig.APPLICATION_ID)"

    .line 27
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
