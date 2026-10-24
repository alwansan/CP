.class public final Lcom/shabakaty/downloader/om3$a;
.super Lcom/shabakaty/downloader/om3;
.source "Random.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/om3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/om3$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/om3;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/om3;-><init>()V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/om3$a$a;->r:Lcom/shabakaty/downloader/om3$a$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/om3;->s:Lcom/shabakaty/downloader/om3;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/om3;->a()I

    move-result v0

    return v0
.end method
