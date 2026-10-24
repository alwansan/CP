.class public Lcom/shabakaty/downloader/uf3$a;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/uf3;->m(Lcom/shabakaty/downloader/n94;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/shabakaty/downloader/n94;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uf3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/n94;

    check-cast p2, Lcom/shabakaty/downloader/n94;

    .line 2
    iget p1, p1, Lcom/shabakaty/downloader/n94;->s:I

    iget p2, p2, Lcom/shabakaty/downloader/n94;->s:I

    sub-int/2addr p1, p2

    return p1
.end method
