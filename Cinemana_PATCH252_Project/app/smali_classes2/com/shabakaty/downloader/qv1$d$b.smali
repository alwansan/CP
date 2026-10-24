.class public final Lcom/shabakaty/downloader/qv1$d$b;
.super Lcom/shabakaty/downloader/wk4;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/qv1$d;->h(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/shabakaty/downloader/qv1$d;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/shabakaty/downloader/qv1$d;II)V
    .locals 0

    iput-object p5, p0, Lcom/shabakaty/downloader/qv1$d$b;->e:Lcom/shabakaty/downloader/qv1$d;

    iput p6, p0, Lcom/shabakaty/downloader/qv1$d$b;->f:I

    iput p7, p0, Lcom/shabakaty/downloader/qv1$d$b;->g:I

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/shabakaty/downloader/wk4;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1$d$b;->e:Lcom/shabakaty/downloader/qv1$d;

    iget-object v0, v0, Lcom/shabakaty/downloader/qv1$d;->s:Lcom/shabakaty/downloader/qv1;

    iget v1, p0, Lcom/shabakaty/downloader/qv1$d$b;->f:I

    iget v2, p0, Lcom/shabakaty/downloader/qv1$d$b;->g:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/shabakaty/downloader/qv1;->j(ZII)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
