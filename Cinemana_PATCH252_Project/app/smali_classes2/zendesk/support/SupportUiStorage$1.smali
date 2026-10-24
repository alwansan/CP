.class public Lzendesk/support/SupportUiStorage$1;
.super Ljava/lang/Object;
.source "SupportUiStorage.java"

# interfaces
.implements Lzendesk/support/Streams$Use;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/SupportUiStorage;->read(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/support/Streams$Use<",
        "TE;",
        "Lcom/shabakaty/downloader/vt0$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lzendesk/support/SupportUiStorage;

.field public final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportUiStorage;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/SupportUiStorage$1;->this$0:Lzendesk/support/SupportUiStorage;

    iput-object p2, p0, Lzendesk/support/SupportUiStorage$1;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public use(Lcom/shabakaty/downloader/vt0$e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vt0$e;",
            ")TE;"
        }
    .end annotation

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/vt0$e;->r:[Ljava/io/InputStream;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->O(Ljava/io/InputStream;)Lcom/shabakaty/downloader/r94;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lzendesk/support/Streams;->toReader(Lcom/shabakaty/downloader/r94;)Ljava/io/Reader;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lzendesk/support/SupportUiStorage$1;->this$0:Lzendesk/support/SupportUiStorage;

    invoke-static {v0}, Lzendesk/support/SupportUiStorage;->access$000(Lzendesk/support/SupportUiStorage;)Lcom/shabakaty/downloader/lr1;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/SupportUiStorage$1;->val$type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/lr1;->d(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic use(Ljava/io/Closeable;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/vt0$e;

    invoke-virtual {p0, p1}, Lzendesk/support/SupportUiStorage$1;->use(Lcom/shabakaty/downloader/vt0$e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
