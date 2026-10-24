.class public Lcom/shabakaty/downloader/j33$b;
.super Ljava/lang/Object;
.source "OSNotificationReceivedEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/j33;->a(Lcom/shabakaty/downloader/c33;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/c33;

.field public final synthetic s:Lcom/shabakaty/downloader/j33;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j33;Lcom/shabakaty/downloader/c33;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/j33$b;->s:Lcom/shabakaty/downloader/j33;

    iput-object p2, p0, Lcom/shabakaty/downloader/j33$b;->r:Lcom/shabakaty/downloader/c33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j33$b;->s:Lcom/shabakaty/downloader/j33;

    iget-object v1, p0, Lcom/shabakaty/downloader/j33$b;->r:Lcom/shabakaty/downloader/c33;

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/j33;->b(Lcom/shabakaty/downloader/c33;)V

    return-void
.end method
