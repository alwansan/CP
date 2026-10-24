.class public Lcom/shabakaty/downloader/cs3$a;
.super Ljava/lang/Object;
.source "RequestExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/cs3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yc0;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cs3;Lcom/shabakaty/downloader/yc0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/cs3$a;->r:Lcom/shabakaty/downloader/yc0;

    iput-object p3, p0, Lcom/shabakaty/downloader/cs3$a;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cs3$a;->r:Lcom/shabakaty/downloader/yc0;

    iget-object v1, p0, Lcom/shabakaty/downloader/cs3$a;->s:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/yc0;->accept(Ljava/lang/Object;)V

    return-void
.end method
