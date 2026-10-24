.class public Lcom/shabakaty/downloader/rs3$c$b;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/rs3$c;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/rs3$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rs3$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/rs3$c$b;->s:Lcom/shabakaty/downloader/rs3$c;

    iput p2, p0, Lcom/shabakaty/downloader/rs3$c$b;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rs3$c$b;->s:Lcom/shabakaty/downloader/rs3$c;

    iget v1, p0, Lcom/shabakaty/downloader/rs3$c$b;->r:I

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/rs3$c;->d(I)V

    return-void
.end method
