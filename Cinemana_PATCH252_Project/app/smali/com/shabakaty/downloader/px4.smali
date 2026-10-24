.class public final Lcom/shabakaty/downloader/px4;
.super Ljava/lang/Object;
.source "UserActionsUseCases_Factory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/k9;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/usermanagement/UserManagement;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/g25;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/s25;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/qm2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;I)V
    .locals 1

    iput p6, p0, Lcom/shabakaty/downloader/px4;->a:I

    const/4 v0, 0x1

    if-eq p6, v0, :cond_1

    const/4 v0, 0x2

    if-eq p6, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/px4;->b:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/px4;->c:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/px4;->d:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/px4;->e:Lcom/shabakaty/downloader/oj3;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/px4;->f:Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/px4;->b:Lcom/shabakaty/downloader/oj3;

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/px4;->c:Lcom/shabakaty/downloader/oj3;

    .line 10
    iput-object p3, p0, Lcom/shabakaty/downloader/px4;->d:Lcom/shabakaty/downloader/oj3;

    .line 11
    iput-object p4, p0, Lcom/shabakaty/downloader/px4;->e:Lcom/shabakaty/downloader/oj3;

    .line 12
    iput-object p5, p0, Lcom/shabakaty/downloader/px4;->f:Ljava/lang/Object;

    return-void

    .line 13
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/shabakaty/downloader/px4;->b:Lcom/shabakaty/downloader/oj3;

    .line 15
    iput-object p2, p0, Lcom/shabakaty/downloader/px4;->c:Lcom/shabakaty/downloader/oj3;

    .line 16
    iput-object p3, p0, Lcom/shabakaty/downloader/px4;->d:Lcom/shabakaty/downloader/oj3;

    .line 17
    iput-object p4, p0, Lcom/shabakaty/downloader/px4;->e:Lcom/shabakaty/downloader/oj3;

    .line 18
    iput-object p5, p0, Lcom/shabakaty/downloader/px4;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/zl2;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/px4;->a:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/shabakaty/downloader/px4;->f:Ljava/lang/Object;

    .line 21
    iput-object p2, p0, Lcom/shabakaty/downloader/px4;->b:Lcom/shabakaty/downloader/oj3;

    .line 22
    iput-object p3, p0, Lcom/shabakaty/downloader/px4;->c:Lcom/shabakaty/downloader/oj3;

    .line 23
    iput-object p4, p0, Lcom/shabakaty/downloader/px4;->d:Lcom/shabakaty/downloader/oj3;

    .line 24
    iput-object p5, p0, Lcom/shabakaty/downloader/px4;->e:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/shabakaty/downloader/px4;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/liulishuo/filedownloader/FileDownloader;

    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/uz0;

    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/mc4;

    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->f:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/shabakaty/downloader/qd4;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ey0;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/ey0;-><init>(Landroid/content/Context;Lcom/liulishuo/filedownloader/FileDownloader;Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/mc4;Lcom/shabakaty/downloader/qd4;)V

    return-object v0

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/ou1;

    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/ox4;

    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/ff3;

    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/n24;

    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->f:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/shabakaty/downloader/al2;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/tu1;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/tu1;-><init>(Lcom/shabakaty/downloader/ou1;Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/al2;)V

    return-object v0

    .line 5
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/k9;

    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/shabakaty/usermanagement/UserManagement;

    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/g25;

    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/s25;

    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->f:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/shabakaty/downloader/qm2;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/ox4;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/ox4;-><init>(Lcom/shabakaty/downloader/k9;Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/g25;Lcom/shabakaty/downloader/s25;Lcom/shabakaty/downloader/qm2;)V

    return-object v0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/px4;->f:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/zl2;

    iget-object v1, p0, Lcom/shabakaty/downloader/px4;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/shabakaty/downloader/px4;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/usermanagement/UserManagement;

    iget-object v3, p0, Lcom/shabakaty/downloader/px4;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/jf;

    iget-object v4, p0, Lcom/shabakaty/downloader/px4;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v4}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/kw1;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "context"

    .line 9
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userManagement"

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorizationInterceptor"

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggingInterceptor"

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/op;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v5, "context.cacheDir"

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v5, 0xa00000

    invoke-direct {v0, v1, v5, v6}, Lcom/shabakaty/downloader/op;-><init>(Ljava/io/File;J)V

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/a63$a;

    invoke-direct {v1}, Lcom/shabakaty/downloader/a63$a;-><init>()V

    .line 12
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xf

    invoke-virtual {v1, v6, v7, v5}, Lcom/shabakaty/downloader/a63$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a63$a;

    .line 13
    invoke-virtual {v1, v6, v7, v5}, Lcom/shabakaty/downloader/a63$a;->d(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a63$a;

    .line 14
    invoke-virtual {v1, v6, v7, v5}, Lcom/shabakaty/downloader/a63$a;->e(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a63$a;

    .line 15
    iput-object v0, v1, Lcom/shabakaty/downloader/a63$a;->k:Lcom/shabakaty/downloader/op;

    .line 16
    new-instance v0, Lcom/shabakaty/usermanagement/utils/authenticator/UserAuthenticator;

    invoke-direct {v0, v2}, Lcom/shabakaty/usermanagement/utils/authenticator/UserAuthenticator;-><init>(Lcom/shabakaty/usermanagement/UserManagement;)V

    .line 17
    iput-object v0, v1, Lcom/shabakaty/downloader/a63$a;->g:Lcom/shabakaty/downloader/if;

    .line 18
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/wp;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wp;-><init>()V

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 20
    new-instance v0, Lcom/shabakaty/downloader/aq;

    invoke-direct {v0}, Lcom/shabakaty/downloader/aq;-><init>()V

    .line 21
    iget-object v2, v1, Lcom/shabakaty/downloader/a63$a;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/shabakaty/downloader/kw1$a;->r:Lcom/shabakaty/downloader/kw1$a;

    .line 23
    iput-object v0, v4, Lcom/shabakaty/downloader/kw1;->b:Lcom/shabakaty/downloader/kw1$a;

    .line 24
    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 25
    new-instance v0, Lcom/shabakaty/downloader/a63;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    .line 26
    iget-object v1, v0, Lcom/shabakaty/downloader/a63;->r:Lcom/shabakaty/downloader/fu0;

    const/4 v2, 0x2

    .line 27
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    monitor-enter v1

    .line 29
    :try_start_0
    iput v2, v1, Lcom/shabakaty/downloader/fu0;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v1

    .line 31
    invoke-virtual {v1}, Lcom/shabakaty/downloader/fu0;->c()Z

    .line 32
    new-instance v1, Lcom/shabakaty/downloader/lt3$b;

    invoke-direct {v1}, Lcom/shabakaty/downloader/lt3$b;-><init>()V

    .line 33
    new-instance v2, Lcom/shabakaty/downloader/lr1;

    invoke-direct {v2}, Lcom/shabakaty/downloader/lr1;-><init>()V

    .line 34
    new-instance v3, Lcom/shabakaty/downloader/nr1;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/nr1;-><init>(Lcom/shabakaty/downloader/lr1;)V

    .line 35
    iget-object v2, v1, Lcom/shabakaty/downloader/lt3$b;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {}, Lcom/shabakaty/downloader/wv3;->b()Lcom/shabakaty/downloader/wv3;

    move-result-object v2

    .line 37
    iget-object v3, v1, Lcom/shabakaty/downloader/lt3$b;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/lt3$b;->c(Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/lt3$b;

    const-string v0, "https://cinemana.shabakaty.cc/api/android/"

    .line 39
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/lt3$b;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/lt3$b;

    .line 40
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lt3$b;->b()Lcom/shabakaty/downloader/lt3;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 41
    monitor-exit v1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
