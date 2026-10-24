.class public final synthetic Lcom/shabakaty/downloader/y80;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/pj3;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/y80;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/y80;

    invoke-direct {v0}, Lcom/shabakaty/downloader/y80;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/y80;->a:Lcom/shabakaty/downloader/y80;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
