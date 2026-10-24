.class public final Lcom/shabakaty/downloader/d65$d;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/d65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/shabakaty/downloader/d65$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:I

.field public final s:Lcom/shabakaty/downloader/b65;


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/b65;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/d65$d;->r:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/d65$d;->s:Lcom/shabakaty/downloader/b65;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/d65$d;

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/d65$d;->r:I

    iget p1, p1, Lcom/shabakaty/downloader/d65$d;->r:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
