.class public final Lcom/shabakaty/downloader/i30$b;
.super Ljava/lang/Object;
.source "ClassifierNamePolicy.kt"

# interfaces
.implements Lcom/shabakaty/downloader/i30;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/i30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/i30$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/i30$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/i30$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/i30$b;->a:Lcom/shabakaty/downloader/i30$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/g30;Lcom/shabakaty/downloader/wq0;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/kt4;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/kt4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    const-string v0, "classifier.name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/wq0;->u(Lcom/shabakaty/downloader/hw2;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/shabakaty/downloader/q20;

    if-nez v0, :cond_1

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/st3;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/st3;-><init>(Ljava/util/List;)V

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->I(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
