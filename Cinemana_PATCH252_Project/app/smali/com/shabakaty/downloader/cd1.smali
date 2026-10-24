.class public final Lcom/shabakaty/downloader/cd1;
.super Ljava/lang/Object;
.source "FirebasePerformanceModule_ProvidesConfigResolverFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/bd1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bd1;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/cd1;->a:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    return-void

    .line 3
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    return-void

    .line 5
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    return-void

    .line 7
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    return-void

    .line 9
    :pswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    return-void

    .line 11
    :pswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    return-void

    .line 13
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/pj3;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/cd1;->a:I

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bd1;->c:Lcom/shabakaty/downloader/pj3;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/bd1;->d:Lcom/shabakaty/downloader/pj3;

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/cd1;->a:I

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getInstance()Lcom/google/firebase/perf/config/RemoteConfigManager;

    move-result-object v0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cd1;->a()Lcom/shabakaty/downloader/pj3;

    move-result-object v0

    return-object v0

    .line 6
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object v0

    .line 9
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 10
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/bd1;->b:Lcom/shabakaty/downloader/mc1;

    .line 12
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 13
    :pswitch_4
    iget-object v0, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/bd1;->a:Lcom/shabakaty/downloader/ec1;

    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 16
    :pswitch_5
    iget-object v0, p0, Lcom/shabakaty/downloader/cd1;->b:Lcom/shabakaty/downloader/bd1;

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/shabakaty/downloader/w90;->e()Lcom/shabakaty/downloader/w90;

    move-result-object v0

    .line 19
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cd1;->a()Lcom/shabakaty/downloader/pj3;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
