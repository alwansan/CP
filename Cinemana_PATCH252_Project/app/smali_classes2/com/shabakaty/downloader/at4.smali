.class public final Lcom/shabakaty/downloader/at4;
.super Ljava/lang/Object;
.source "typeEnhancement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/at4$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/e9;

.field public static final b:Lcom/shabakaty/downloader/e9;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/e9;

    sget-object v1, Lcom/shabakaty/downloader/ta2;->o:Lcom/shabakaty/downloader/fi1;

    const-string v2, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/e9;-><init>(Lcom/shabakaty/downloader/fi1;)V

    sput-object v0, Lcom/shabakaty/downloader/at4;->a:Lcom/shabakaty/downloader/e9;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/e9;

    sget-object v1, Lcom/shabakaty/downloader/ta2;->p:Lcom/shabakaty/downloader/fi1;

    const-string v2, "ENHANCED_MUTABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/e9;-><init>(Lcom/shabakaty/downloader/fi1;)V

    sput-object v0, Lcom/shabakaty/downloader/at4;->b:Lcom/shabakaty/downloader/e9;

    return-void
.end method
