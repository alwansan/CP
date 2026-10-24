.class public final Lcom/shabakaty/downloader/s71$a;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/s71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/cr2$c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/t54;

.field public final c:I

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/shabakaty/downloader/t54;IJLcom/shabakaty/downloader/r71;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/s71$a;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/s71$a;->b:Lcom/shabakaty/downloader/t54;

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/s71$a;->c:I

    .line 5
    iput-wide p4, p0, Lcom/shabakaty/downloader/s71$a;->d:J

    return-void
.end method
