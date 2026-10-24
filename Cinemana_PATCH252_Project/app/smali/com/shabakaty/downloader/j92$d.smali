.class public final Lcom/shabakaty/downloader/j92$d;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Lcom/shabakaty/downloader/j92$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/j92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:I

.field public final synthetic c:Lcom/shabakaty/downloader/j92;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j92;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/j92$d;->c:Lcom/shabakaty/downloader/j92;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/j92$d;->a:Landroid/content/Intent;

    .line 3
    iput p3, p0, Lcom/shabakaty/downloader/j92$d;->b:I

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j92$d;->c:Lcom/shabakaty/downloader/j92;

    iget v1, p0, Lcom/shabakaty/downloader/j92$d;->b:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j92$d;->a:Landroid/content/Intent;

    return-object v0
.end method
