.class public final Lcom/shabakaty/downloader/f81$a;
.super Ljava/lang/Object;
.source "ExoTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/bp4;

.field public final b:[I

.field public final c:I


# direct methods
.method public varargs constructor <init>(Lcom/shabakaty/downloader/bp4;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/f81$a;->a:Lcom/shabakaty/downloader/bp4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/f81$a;->b:[I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/f81$a;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/bp4;[II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/f81$a;->a:Lcom/shabakaty/downloader/bp4;

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/f81$a;->b:[I

    .line 8
    iput p3, p0, Lcom/shabakaty/downloader/f81$a;->c:I

    return-void
.end method
