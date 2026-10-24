.class public interface abstract Lcom/shabakaty/downloader/x73;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/x73$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/x73$b$c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field

.field public static final b:Lcom/shabakaty/downloader/x73$b$b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/x73$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/x73$b$c;-><init>(Lcom/shabakaty/downloader/x73$a;)V

    sput-object v0, Lcom/shabakaty/downloader/x73;->a:Lcom/shabakaty/downloader/x73$b$c;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/x73$b$b;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/x73$b$b;-><init>(Lcom/shabakaty/downloader/x73$a;)V

    sput-object v0, Lcom/shabakaty/downloader/x73;->b:Lcom/shabakaty/downloader/x73$b$b;

    return-void
.end method
