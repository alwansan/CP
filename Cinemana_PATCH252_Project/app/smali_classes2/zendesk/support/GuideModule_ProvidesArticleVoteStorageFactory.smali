.class public final Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;
.super Ljava/lang/Object;
.source "GuideModule_ProvidesArticleVoteStorageFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final module:Lzendesk/support/GuideModule;


# direct methods
.method public constructor <init>(Lzendesk/support/GuideModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;->module:Lzendesk/support/GuideModule;

    return-void
.end method

.method public static create(Lzendesk/support/GuideModule;)Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;

    invoke-direct {v0, p0}, Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;-><init>(Lzendesk/support/GuideModule;)V

    return-object v0
.end method

.method public static providesArticleVoteStorage(Lzendesk/support/GuideModule;)Lzendesk/support/ArticleVoteStorage;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/GuideModule;->providesArticleVoteStorage()Lzendesk/support/ArticleVoteStorage;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;->get()Lzendesk/support/ArticleVoteStorage;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/ArticleVoteStorage;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;->module:Lzendesk/support/GuideModule;

    invoke-static {v0}, Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;->providesArticleVoteStorage(Lzendesk/support/GuideModule;)Lzendesk/support/ArticleVoteStorage;

    move-result-object v0

    return-object v0
.end method
