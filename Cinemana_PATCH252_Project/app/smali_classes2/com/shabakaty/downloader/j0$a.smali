.class public abstract Lcom/shabakaty/downloader/j0$a;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/shabakaty/downloader/es2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/j0$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/shabakaty/downloader/j0$a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/es2$a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Lcom/shabakaty/downloader/es2;)Lcom/shabakaty/downloader/u97;
    .locals 1

    .line 1
    new-instance p0, Lcom/shabakaty/downloader/u97;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/u97;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method public abstract h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/u40;",
            "Lcom/shabakaty/downloader/t81;",
            ")TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/j0$a;->h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;

    move-result-object p1

    return-object p1
.end method
