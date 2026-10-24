.class public final synthetic Lcom/shabakaty/downloader/v1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/t80;


# static fields
.field public static final synthetic b:Lcom/shabakaty/downloader/v1;

.field public static final synthetic c:Lcom/shabakaty/downloader/v1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/v1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/v1;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/v1;->b:Lcom/shabakaty/downloader/v1;

    new-instance v0, Lcom/shabakaty/downloader/v1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/v1;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/v1;->c:Lcom/shabakaty/downloader/v1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/v1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/q80;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/v1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/google/firebase/abt/component/AbtRegistrar;->a(Lcom/shabakaty/downloader/q80;)Lcom/shabakaty/downloader/s1;

    move-result-object p1

    return-object p1

    .line 1
    :goto_0
    new-instance v0, Lcom/shabakaty/downloader/gp0;

    const-class v1, Lcom/shabakaty/downloader/dh2;

    .line 2
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/q80;->d(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/fq1;->t:Lcom/shabakaty/downloader/fq1;

    if-nez v1, :cond_1

    .line 4
    const-class v2, Lcom/shabakaty/downloader/fq1;

    monitor-enter v2

    .line 5
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/fq1;->t:Lcom/shabakaty/downloader/fq1;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/fq1;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/shabakaty/downloader/fq1;-><init>(I)V

    sput-object v1, Lcom/shabakaty/downloader/fq1;->t:Lcom/shabakaty/downloader/fq1;

    .line 7
    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_1
    :goto_1
    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/gp0;-><init>(Ljava/util/Set;Lcom/shabakaty/downloader/fq1;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
