.class public Lcom/shabakaty/downloader/d64$a;
.super Ljava/lang/Object;
.source "signatureEnhancement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/d64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/qe2;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qe2;ZZ)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/d64$a;->a:Lcom/shabakaty/downloader/qe2;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/d64$a;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/d64$a;->c:Z

    return-void
.end method
