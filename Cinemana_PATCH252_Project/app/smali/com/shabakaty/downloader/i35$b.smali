.class public Lcom/shabakaty/downloader/i35$b;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/i35;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/i35;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/i35;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/i35$b;->r:Lcom/shabakaty/downloader/i35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i35$b;->r:Lcom/shabakaty/downloader/i35;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/i35;->t(I)V

    return-void
.end method
