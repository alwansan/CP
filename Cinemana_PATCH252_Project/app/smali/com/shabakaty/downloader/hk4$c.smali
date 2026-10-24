.class public Lcom/shabakaty/downloader/hk4$c;
.super Ljava/lang/Object;
.source "TableInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/hk4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/shabakaty/downloader/hk4$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:I

.field public final s:I

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/hk4$c;->r:I

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/hk4$c;->s:I

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/hk4$c;->t:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/hk4$c;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hk4$c;

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/hk4$c;->r:I

    iget v1, p1, Lcom/shabakaty/downloader/hk4$c;->r:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/hk4$c;->s:I

    iget p1, p1, Lcom/shabakaty/downloader/hk4$c;->s:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method
