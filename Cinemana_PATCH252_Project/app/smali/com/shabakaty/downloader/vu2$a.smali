.class public Lcom/shabakaty/downloader/vu2$a;
.super Ljava/lang/Object;
.source "MotionLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/vu2;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/vu2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vu2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/vu2$a;->r:Lcom/shabakaty/downloader/vu2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu2$a;->r:Lcom/shabakaty/downloader/vu2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/vu2;->e0:Lcom/shabakaty/downloader/vu2$b;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vu2$b;->a()V

    return-void
.end method
