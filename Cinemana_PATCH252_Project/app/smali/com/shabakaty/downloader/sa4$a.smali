.class public abstract Lcom/shabakaty/downloader/sa4$a;
.super Lcom/shabakaty/downloader/d0;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/sa4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/d0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final t:Ljava/lang/CharSequence;

.field public final u:Lcom/shabakaty/downloader/cz;

.field public final v:Z

.field public w:I

.field public x:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sa4;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/d0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/sa4$a;->w:I

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/sa4;->a:Lcom/shabakaty/downloader/cz;

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/sa4$a;->u:Lcom/shabakaty/downloader/cz;

    .line 5
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sa4$a;->v:Z

    .line 6
    iget p1, p1, Lcom/shabakaty/downloader/sa4;->c:I

    .line 7
    iput p1, p0, Lcom/shabakaty/downloader/sa4$a;->x:I

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/sa4$a;->t:Ljava/lang/CharSequence;

    return-void
.end method
