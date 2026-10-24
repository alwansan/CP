.class public final Lcom/shabakaty/downloader/hf6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/shabakaty/downloader/uy6;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Ljava/lang/String;

.field public final synthetic v:Lcom/shabakaty/downloader/di6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/di6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iput p5, p0, Lcom/shabakaty/downloader/hf6;->r:I

    const/4 v0, 0x1

    if-eq p5, v0, :cond_2

    const/4 v0, 0x2

    if-eq p5, v0, :cond_1

    const/4 v0, 0x3

    if-eq p5, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/hf6;->v:Lcom/shabakaty/downloader/di6;

    iput-object p2, p0, Lcom/shabakaty/downloader/hf6;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/hf6;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/hf6;->u:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/hf6;->v:Lcom/shabakaty/downloader/di6;

    iput-object p2, p0, Lcom/shabakaty/downloader/hf6;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/hf6;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/hf6;->u:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/hf6;->v:Lcom/shabakaty/downloader/di6;

    iput-object p2, p0, Lcom/shabakaty/downloader/hf6;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/hf6;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/hf6;->u:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 4
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/hf6;->v:Lcom/shabakaty/downloader/di6;

    iput-object p2, p0, Lcom/shabakaty/downloader/hf6;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/hf6;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/hf6;->u:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/hf6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/hf6;->v:Lcom/shabakaty/downloader/di6;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->c()V

    iget-object v0, p0, Lcom/shabakaty/downloader/hf6;->v:Lcom/shabakaty/downloader/di6;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/hf6;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/hf6;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/downloader/hf6;->u:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/mh5;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/hf6;->v:Lcom/shabakaty/downloader/di6;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->c()V

    iget-object v0, p0, Lcom/shabakaty/downloader/hf6;->v:Lcom/shabakaty/downloader/di6;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 14
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/hf6;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/hf6;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/downloader/hf6;->u:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/mh5;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/hf6;->v:Lcom/shabakaty/downloader/di6;

    .line 18
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 19
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->c()V

    iget-object v0, p0, Lcom/shabakaty/downloader/hf6;->v:Lcom/shabakaty/downloader/di6;

    .line 20
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 21
    iget-object v0, v0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 22
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 23
    iget-object v1, p0, Lcom/shabakaty/downloader/hf6;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/hf6;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/downloader/hf6;->u:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/mh5;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/hf6;->v:Lcom/shabakaty/downloader/di6;

    .line 26
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 27
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->c()V

    iget-object v0, p0, Lcom/shabakaty/downloader/hf6;->v:Lcom/shabakaty/downloader/di6;

    .line 28
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 29
    iget-object v0, v0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 30
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 31
    iget-object v1, p0, Lcom/shabakaty/downloader/hf6;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/hf6;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/downloader/hf6;->u:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/mh5;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
