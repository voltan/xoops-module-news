<{if $block.show == 'news'}>
<div class="itemBlock">
    <{foreach item=content from=$block.contents}>
    <div class="item">
        <div class="itemHead">
            <div class="itemTitle"><h3><{if $content.story_important}><span class="red bold"><{$smarty.const._NEWS_MB_IMPORTANT}></span><{/if}><a
                    title="<{$content.title}>" href="<{$content.url}>"><{$content.title}></a></h3></div>
        </div>
        <{if $block.date}>
        <div class="itemInfo"><{$smarty.const._NEWS_MB_DATE}> :<{$content.date}></div>
        <{/if}>
        <{if $block.img || $block.description}>
        <div class="itemBody" id="story_<{$content.story_id}>">
            <{if $block.img && $content.story_img}>
            <div class="itemImg">
                <img width="<{$block.width}>" class="<{$block.float}>" src="<{$block.thumburl}><{$content.story_img}>"
                     alt="<{$content.title}>"/>
            </div>
            <{/if}>
            <{if $block.description}>
            <{if $content.story_short}>
            <div class="itemText"><{$content.story_short}></div>
            <{else}>
            <div class="itemText"><{$content.story_text|truncate:300}></div>
            <{/if}>
            <{/if}>
            <div class="clear"></div>
        </div>
        <{/if}>
    </div>
    <{/foreach}>
</div>
<{elseif $block.show == 'list'}>
<div class="itemBlock">
    <{if $block.img || $block.description}>
    <ul class="itemList">
        <{foreach item=content from=$block.contents}>
        <{if $block.img && $content.story_img}>
        <div class="itemImg">
            <img width="<{$block.width}>" class="<{$block.float}>" src="<{$block.thumburl}><{$content.story_img}>"
                 alt="<{$content.title}>"/>
        </div>
        <{/if}>
        <li>
            <h3><{if $content.story_important}><span class="red bold"><{$smarty.const._NEWS_MB_IMPORTANT}></span><{/if}><a
                    href="<{$content.url}>" title="<{$content.story_title}>"><{$content.story_title}></a></h3>
            <{if $block.date}>
            <div class="itemPostDate"><{$content.date}></div>
            <{/if}>
            <{if $block.description}>
            <{if $content.story_short}>
            <div class="itemText"><{$content.story_short}></div>
            <{else}>
            <div class="itemText"><{$content.story_text|truncate:130}></div>
            <{/if}>
            <{/if}>
            <div class="clear"></div>
        </li>
        <{/foreach}>
    </ul>
    <{else}>
    <ul>
        <{foreach item=content from=$block.contents}>
        <li>
            <{if $content.story_important}><span class="red bold"><{$smarty.const._NEWS_MB_IMPORTANT}></span><{/if}><a
                href="<{$content.url}>" title="<{$content.story_title}>"><{$content.title}></a>
            <{if $block.date}>
            <span class="itemPostDate"><{$content.date}></span>
            <{/if}>
        </li>
        <{/foreach}>
    </ul>
    <{/if}>
</div>
<{elseif $block.show == 'spotlight'}>
<div class="itemBlock">
    <{foreach item=content from=$block.contents}>
    <{if $content.story_id == $block.spotlightid}>
    <div class="itemBlockLeft">
        <div class="item">
            <div class="itemHead">
                <div class="itemTitle"><h2><{if $content.story_important}><span class="red bold"><{$smarty.const._NEWS_MB_IMPORTANT}></span><{/if}><a
                        title="<{$content.title}>" href="<{$content.url}>"><{$content.title}></a></h2></div>
            </div>
            <{if $block.date}>
            <div class="itemInfo"><{$smarty.const._NEWS_MB_DATE}> :<{$content.date}></div>
            <{/if}>
            <{if $block.img || $block.description}>
            <div class="itemBody" id="story_<{$content.story_id}>">
                <{if $block.img && $content.story_img}>
                <div class="itemImg">
                    <img width="<{$block.width}>" class="<{$block.float}>"
                         src="<{$block.thumburl}><{$content.story_img}>" alt="<{$content.title}>"/>
                </div>
                <{/if}>
                <{if $block.description}>
                <{if $content.story_short}>
                <div class="itemText"><{$content.story_short|truncate:200}></div>
                <{else}>
                <div class="itemText"><{$content.story_text|truncate:200}></div>
                <{/if}>
                <div class="itemMore"><a title="<{$content.title}>" href="<{$content.url}>"><{$smarty.const._NEWS_MB_MORE}></a>
                </div>
                <{/if}>
                <div class="clear"></div>
            </div>
            <{/if}>
        </div>
    </div>
    <{/if}>
    <{/foreach}>
    <{foreach item=content from=$block.contents}>
    <{if $content.story_id != $block.spotlightid}>
    <div class="itemBlockRight">
        <h3><{if $content.story_important}><span class="red bold"><{$smarty.const._NEWS_MB_IMPORTANT}></span><{/if}><a
                href="<{$content.url}>" title="<{$content.story_title}>"><{$content.story_title|truncate:80}></a></h3>
    </div>
    <{/if}>
    <{/foreach}>
    <div class="clear"></div>
</div>
<{elseif $block.show == 'spotlight2'}>
<div class="itemBlock">
    <{foreach item=content from=$block.contents}>
    <{if $content.story_id == $block.spotlightid}>
    <div class="itemBlockLeft">
        <div class="item">
            <div class="itemHead">
                <div class="itemTitle"><h2><{if $content.story_important}><span class="red bold"><{$smarty.const._NEWS_MB_IMPORTANT}></span><{/if}><a
                        title="<{$content.title}>" href="<{$content.url}>"><{$content.title}></a></h2></div>
            </div>
            <{if $block.date}>
            <div class="itemInfo"><{$smarty.const._NEWS_MB_DATE}> :<{$content.date}></div>
            <{/if}>
            <{if $block.img || $block.description}>
            <div class="itemBody" id="story_<{$content.story_id}>">
                <{if $block.img && $content.story_img}>
                <div class="itemImg">
                    <img width="<{$block.width}>" class="<{$block.float}>"
                         src="<{$block.thumburl}><{$content.story_img}>" alt="<{$content.title}>"/>
                </div>
                <{/if}>
                <{if $block.description}>
                <{if $content.story_short}>
                <div class="itemText"><{$content.story_short|truncate:200}></div>
                <{else}>
                <div class="itemText"><{$content.story_text|truncate:200}></div>
                <{/if}>
                <div class="itemMore"><a title="<{$content.title}>" href="<{$content.url}>"><{$smarty.const._NEWS_MB_MORE}></a>
                </div>
                <{/if}>
                <div class="clear"></div>
            </div>
            <{/if}>
        </div>
    </div>
    <{/if}>
    <{/foreach}>
    <{foreach item=content from=$block.contents}>
    <{if $content.story_id != $block.spotlightid}>
    <div class="itemBlockRight">
        <h3><{if $content.story_important}><span class="red bold"><{$smarty.const._NEWS_MB_IMPORTANT}></span><{/if}><a
                href="<{$content.url}>" title="<{$content.story_title}>"><{$content.story_title|truncate:80}></a></h3>
    </div>
    <{/if}>
    <{/foreach}>
    <div class="clear"></div>
</div>
<{/if}>