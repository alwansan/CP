.class public final Lcom/shabakaty/downloader/om3$a$a;
.super Ljava/lang/Object;
.source "Random.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/om3$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/om3$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/om3$a$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/om3$a$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/om3$a$a;->r:Lcom/shabakaty/downloader/om3$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/om3;->r:Lcom/shabakaty/downloader/om3$a;

    return-object v0
.end method
