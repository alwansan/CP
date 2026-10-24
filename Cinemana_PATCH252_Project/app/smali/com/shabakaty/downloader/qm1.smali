.class public final Lcom/shabakaty/downloader/qm1;
.super Ljava/lang/Object;
.source "Function0.java"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/qm1$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/qm1$a;

.field public final s:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qm1$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qm1;->r:Lcom/shabakaty/downloader/qm1$a;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/qm1;->s:I

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qm1;->r:Lcom/shabakaty/downloader/qm1$a;

    iget v1, p0, Lcom/shabakaty/downloader/qm1;->s:I

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/qm1$a;->c(I)Lcom/shabakaty/downloader/qv4;

    move-result-object v0

    return-object v0
.end method
