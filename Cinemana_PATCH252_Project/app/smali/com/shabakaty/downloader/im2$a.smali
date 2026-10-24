.class public Lcom/shabakaty/downloader/im2$a;
.super Ljava/lang/Object;
.source "MapEntryLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/im2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/c75;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/c75;

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c75;Ljava/lang/Object;Lcom/shabakaty/downloader/c75;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/c75;",
            "TK;",
            "Lcom/shabakaty/downloader/c75;",
            "TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/im2$a;->a:Lcom/shabakaty/downloader/c75;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/im2$a;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/im2$a;->c:Lcom/shabakaty/downloader/c75;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/im2$a;->d:Ljava/lang/Object;

    return-void
.end method
