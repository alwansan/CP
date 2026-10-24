.class public final Lcom/shabakaty/downloader/q71$a;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/ar2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/shabakaty/downloader/nn4;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/q71$a;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/q71$a;->b:Lcom/shabakaty/downloader/nn4;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/nn4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71$a;->b:Lcom/shabakaty/downloader/nn4;

    return-object v0
.end method
