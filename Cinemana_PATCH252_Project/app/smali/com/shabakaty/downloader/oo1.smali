.class public final synthetic Lcom/shabakaty/downloader/oo1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/google/firebase/perf/session/gauges/GaugeManager;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Lcom/shabakaty/downloader/oc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lcom/shabakaty/downloader/oc;I)V
    .locals 0

    iput p4, p0, Lcom/shabakaty/downloader/oo1;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/oo1;->s:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    iput-object p2, p0, Lcom/shabakaty/downloader/oo1;->t:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/oo1;->u:Lcom/shabakaty/downloader/oc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/oo1;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/oo1;->s:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    iget-object v1, p0, Lcom/shabakaty/downloader/oo1;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/oo1;->u:Lcom/shabakaty/downloader/oc;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->b(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lcom/shabakaty/downloader/oc;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/oo1;->s:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    iget-object v1, p0, Lcom/shabakaty/downloader/oo1;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/oo1;->u:Lcom/shabakaty/downloader/oc;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->a(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lcom/shabakaty/downloader/oc;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
