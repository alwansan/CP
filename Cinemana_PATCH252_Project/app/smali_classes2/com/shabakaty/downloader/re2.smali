.class public interface abstract Lcom/shabakaty/downloader/re2;
.super Ljava/lang/Object;
.source "KotlinTypeChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/re2$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/re2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ez2;->b:Lcom/shabakaty/downloader/ez2$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ez2$a;->b:Lcom/shabakaty/downloader/fz2;

    .line 3
    sput-object v0, Lcom/shabakaty/downloader/re2;->a:Lcom/shabakaty/downloader/re2;

    return-void
.end method
