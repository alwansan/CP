.class public final Lcom/shabakaty/downloader/s64$b;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/s64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/or3;

.field public c:Lcom/shabakaty/downloader/w30;

.field public d:Lcom/shabakaty/downloader/lp4;

.field public e:Lcom/shabakaty/downloader/zq2;

.field public f:Lcom/shabakaty/downloader/fj2;

.field public g:Lcom/shabakaty/downloader/qi;

.field public h:Lcom/shabakaty/downloader/k6;

.field public i:Landroid/os/Looper;

.field public j:Lcom/shabakaty/downloader/ie;

.field public k:Z

.field public l:I

.field public m:Z

.field public n:Lcom/shabakaty/downloader/wz3;

.field public o:J

.field public p:J

.field public q:Lcom/shabakaty/downloader/ej2;

.field public r:J

.field public s:J

.field public t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/or3;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/do0;

    invoke-direct {v2}, Lcom/shabakaty/downloader/do0;-><init>()V

    .line 2
    new-instance v3, Lcom/shabakaty/downloader/ep0;

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/ep0;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/shabakaty/downloader/ro0;

    invoke-direct {v4, v0, v2}, Lcom/shabakaty/downloader/ro0;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/s91;)V

    new-instance v2, Lcom/shabakaty/downloader/oo0;

    invoke-direct {v2}, Lcom/shabakaty/downloader/oo0;-><init>()V

    .line 3
    sget-object v5, Lcom/shabakaty/downloader/in0;->n:Lcom/google/common/collect/q;

    .line 4
    const-class v5, Lcom/shabakaty/downloader/in0;

    monitor-enter v5

    .line 5
    :try_start_0
    sget-object v6, Lcom/shabakaty/downloader/in0;->u:Lcom/shabakaty/downloader/in0;

    if-nez v6, :cond_0

    .line 6
    new-instance v6, Lcom/shabakaty/downloader/in0$a;

    invoke-direct {v6, v0}, Lcom/shabakaty/downloader/in0$a;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v13, Lcom/shabakaty/downloader/in0;

    iget-object v8, v6, Lcom/shabakaty/downloader/in0$a;->a:Landroid/content/Context;

    iget-object v9, v6, Lcom/shabakaty/downloader/in0$a;->b:Ljava/util/Map;

    iget v10, v6, Lcom/shabakaty/downloader/in0$a;->c:I

    iget-object v11, v6, Lcom/shabakaty/downloader/in0$a;->d:Lcom/shabakaty/downloader/w30;

    iget-boolean v12, v6, Lcom/shabakaty/downloader/in0$a;->e:Z

    move-object v7, v13

    .line 8
    invoke-direct/range {v7 .. v12}, Lcom/shabakaty/downloader/in0;-><init>(Landroid/content/Context;Ljava/util/Map;ILcom/shabakaty/downloader/w30;Z)V

    .line 9
    sput-object v13, Lcom/shabakaty/downloader/in0;->u:Lcom/shabakaty/downloader/in0;

    .line 10
    :cond_0
    sget-object v6, Lcom/shabakaty/downloader/in0;->u:Lcom/shabakaty/downloader/in0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 11
    new-instance v5, Lcom/shabakaty/downloader/k6;

    sget-object v7, Lcom/shabakaty/downloader/w30;->a:Lcom/shabakaty/downloader/w30;

    invoke-direct {v5, v7}, Lcom/shabakaty/downloader/k6;-><init>(Lcom/shabakaty/downloader/w30;)V

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, v1, Lcom/shabakaty/downloader/s64$b;->a:Landroid/content/Context;

    move-object/from16 v0, p2

    .line 14
    iput-object v0, v1, Lcom/shabakaty/downloader/s64$b;->b:Lcom/shabakaty/downloader/or3;

    .line 15
    iput-object v3, v1, Lcom/shabakaty/downloader/s64$b;->d:Lcom/shabakaty/downloader/lp4;

    .line 16
    iput-object v4, v1, Lcom/shabakaty/downloader/s64$b;->e:Lcom/shabakaty/downloader/zq2;

    .line 17
    iput-object v2, v1, Lcom/shabakaty/downloader/s64$b;->f:Lcom/shabakaty/downloader/fj2;

    .line 18
    iput-object v6, v1, Lcom/shabakaty/downloader/s64$b;->g:Lcom/shabakaty/downloader/qi;

    .line 19
    iput-object v5, v1, Lcom/shabakaty/downloader/s64$b;->h:Lcom/shabakaty/downloader/k6;

    .line 20
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->t()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, v1, Lcom/shabakaty/downloader/s64$b;->i:Landroid/os/Looper;

    .line 21
    sget-object v0, Lcom/shabakaty/downloader/ie;->f:Lcom/shabakaty/downloader/ie;

    iput-object v0, v1, Lcom/shabakaty/downloader/s64$b;->j:Lcom/shabakaty/downloader/ie;

    const/4 v0, 0x1

    .line 22
    iput v0, v1, Lcom/shabakaty/downloader/s64$b;->l:I

    .line 23
    iput-boolean v0, v1, Lcom/shabakaty/downloader/s64$b;->m:Z

    .line 24
    sget-object v0, Lcom/shabakaty/downloader/wz3;->c:Lcom/shabakaty/downloader/wz3;

    iput-object v0, v1, Lcom/shabakaty/downloader/s64$b;->n:Lcom/shabakaty/downloader/wz3;

    const-wide/16 v2, 0x1388

    .line 25
    iput-wide v2, v1, Lcom/shabakaty/downloader/s64$b;->o:J

    const-wide/16 v2, 0x3a98

    .line 26
    iput-wide v2, v1, Lcom/shabakaty/downloader/s64$b;->p:J

    const-wide/16 v2, 0x14

    .line 27
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v14

    const-wide/16 v2, 0x1f4

    .line 28
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v16

    const v18, 0x3f7fbe77    # 0.999f

    .line 29
    new-instance v0, Lcom/shabakaty/downloader/no0;

    const v9, 0x3f7851ec    # 0.97f

    const v10, 0x3f83d70a    # 1.03f

    const-wide/16 v11, 0x3e8

    const v13, 0x33d6bf95    # 1.0E-7f

    const/16 v19, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v19}, Lcom/shabakaty/downloader/no0;-><init>(FFJFJJFLcom/shabakaty/downloader/no0$a;)V

    .line 30
    iput-object v0, v1, Lcom/shabakaty/downloader/s64$b;->q:Lcom/shabakaty/downloader/ej2;

    .line 31
    iput-object v7, v1, Lcom/shabakaty/downloader/s64$b;->c:Lcom/shabakaty/downloader/w30;

    .line 32
    iput-wide v2, v1, Lcom/shabakaty/downloader/s64$b;->r:J

    const-wide/16 v2, 0x7d0

    .line 33
    iput-wide v2, v1, Lcom/shabakaty/downloader/s64$b;->s:J

    return-void

    :catchall_0
    move-exception v0

    .line 34
    monitor-exit v5

    throw v0
.end method
