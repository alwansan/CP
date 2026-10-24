.class public Lcom/shabakaty/downloader/io4$b;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/io4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/io4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/io4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/io4$b;->r:Lcom/shabakaty/downloader/io4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/io4$b;->r:Lcom/shabakaty/downloader/io4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/io4;->b()V

    return-void
.end method
