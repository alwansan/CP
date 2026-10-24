.class public final Lcom/shabakaty/downloader/vg1$a$a;
.super Ljava/lang/Object;
.source "FlowableSubscribeOn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/vg1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/lf4;

.field public final s:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lf4;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/vg1$a$a;->r:Lcom/shabakaty/downloader/lf4;

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/vg1$a$a;->s:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vg1$a$a;->r:Lcom/shabakaty/downloader/lf4;

    iget-wide v1, p0, Lcom/shabakaty/downloader/vg1$a$a;->s:J

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/lf4;->u(J)V

    return-void
.end method
