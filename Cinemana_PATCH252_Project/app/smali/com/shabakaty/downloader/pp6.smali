.class public final Lcom/shabakaty/downloader/pp6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/jp6;

.field public final synthetic s:Lcom/shabakaty/downloader/jp6;

.field public final synthetic t:J

.field public final synthetic u:Z

.field public final synthetic v:Lcom/shabakaty/downloader/aq6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/aq6;Lcom/shabakaty/downloader/jp6;Lcom/shabakaty/downloader/jp6;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/pp6;->v:Lcom/shabakaty/downloader/aq6;

    iput-object p2, p0, Lcom/shabakaty/downloader/pp6;->r:Lcom/shabakaty/downloader/jp6;

    iput-object p3, p0, Lcom/shabakaty/downloader/pp6;->s:Lcom/shabakaty/downloader/jp6;

    iput-wide p4, p0, Lcom/shabakaty/downloader/pp6;->t:J

    iput-boolean p6, p0, Lcom/shabakaty/downloader/pp6;->u:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/shabakaty/downloader/pp6;->v:Lcom/shabakaty/downloader/aq6;

    iget-object v1, p0, Lcom/shabakaty/downloader/pp6;->r:Lcom/shabakaty/downloader/jp6;

    iget-object v2, p0, Lcom/shabakaty/downloader/pp6;->s:Lcom/shabakaty/downloader/jp6;

    iget-wide v3, p0, Lcom/shabakaty/downloader/pp6;->t:J

    iget-boolean v5, p0, Lcom/shabakaty/downloader/pp6;->u:Z

    const/4 v6, 0x0

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/aq6;->j(Lcom/shabakaty/downloader/jp6;Lcom/shabakaty/downloader/jp6;JZLandroid/os/Bundle;)V

    return-void
.end method
